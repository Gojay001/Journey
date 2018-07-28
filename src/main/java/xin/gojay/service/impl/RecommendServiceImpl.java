package xin.gojay.service.impl;

import org.springframework.stereotype.Service;
import xin.gojay.dao.InfoDao;
import xin.gojay.dao.RoadfareDao;
import xin.gojay.pojos.Country;
import xin.gojay.pojos.Info;
import xin.gojay.pojos.Roadfare;
import xin.gojay.service.RecommendService;
import xin.gojay.utils.DoubleUtil;
import xin.gojay.utils.ResponseUtil;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;


/**
 * @author Gojay
 * @program Journey
 * @description 根据出发地于预算进行推荐
 * @date 2018-07-26 14:52
 **/

@Service
public class RecommendServiceImpl implements RecommendService {

    @Resource
    private RoadfareDao roadfareDao;
    @Resource
    private InfoDao infoDao;

    @Override
    public List<Roadfare> getRoadfare(String startName) {
        return roadfareDao.getRoadfare(startName);
    }

    @Override
    public Info getInfo(String countryId) {
        return infoDao.getInfo(countryId);
}

    @Override
    public double getTotalFare(Country country, double fare1, double fare2) {
        return DoubleUtil.stringToDouble(country.getFare()) + fare1 + fare2;
    }

    @Override
    public ResponseUtil recommend(String startName, String budget, int days) {
        // 初始化推荐城市信息
        ArrayList<Country> countryArrayList = new ArrayList<>();
        // 初始化出发地
        List<Roadfare> roadfareList = getRoadfare(startName);

        // 建立城市列表,加入路费
        for (Roadfare roadfare : roadfareList) {
            Country country = new Country();
            country.setCountryId(roadfare.getAimId());
            country.setCountryName(roadfare.getAimName());
            country.setFare(roadfare.getCost());
            countryArrayList.add(country);
        }

        for (Country country : countryArrayList) {
            Info info = getInfo(country.getCountryId());

            // 获取冬夏季满意度
            double fareScore = (2000 - DoubleUtil.stringToDouble(country.getFare())) / 1000;
            double winterTempScore = DoubleUtil.stringToDouble(info.getWinterTempScore());
            double summerTempScore = DoubleUtil.stringToDouble(info.getSummerTempScore());
            double liveScore = DoubleUtil.stringToDouble(info.getLiveScore());
            double dailyScore = DoubleUtil.stringToDouble(info.getDailyScore());
            double winterScore = DoubleUtil.stringToDouble(info.getWinterScore());
            double summerScore = DoubleUtil.stringToDouble(info.getSummerScore());
            country.setWinterScore(DoubleUtil.doubleToString(winterTempScore*2 + liveScore + dailyScore + winterScore*2 + fareScore));
            country.setSummerScore(DoubleUtil.doubleToString(summerTempScore*2 + liveScore + dailyScore + summerScore*2 + fareScore));

            // 获取城市总消费
            double fare1 = DoubleUtil.stringToDouble(info.getLiveCost()) * days;
            double fare2 = DoubleUtil.stringToDouble(info.getDailyCost()) * days;
            String totalFare = DoubleUtil.doubleToString(getTotalFare(country, fare1, fare2));
            country.setFare(totalFare);
            // 预算不足,设置标志
            if (DoubleUtil.stringToDouble(budget) < DoubleUtil.stringToDouble(totalFare)) {
                country.setBudgetEnough("false");
            }
        }

        // 返回响应
        ResponseUtil responseUtil = new ResponseUtil(200, "OK#成功返回");
        responseUtil.setBody(countryArrayList);
        return responseUtil;
    }

    @Override
    public ResponseUtil getCountryInfo(String countryId) {
        Info countryInfo = getInfo(countryId);

        // 返回响应
        ResponseUtil responseUtil = new ResponseUtil(200, "OK#成功返回");
        responseUtil.setBody(countryInfo);
        return responseUtil;
    }
}
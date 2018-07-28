package xin.gojay.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import xin.gojay.service.RecommendService;
import xin.gojay.utils.ResponseUtil;

import javax.annotation.Resource;

/**
 * @program Journey
 * @description 推荐控制器
 * @author Gojay
 * @date 2018-07-26 11:32
 **/

@Controller
@RequestMapping("api")
public class RecommendController {
    @Resource
    private RecommendService recommendService;

    @RequestMapping(value = "/recommend", method = RequestMethod.POST)
    @ResponseBody
    public ResponseUtil recommendPlan(@Param("startName") String startName,
                                      @Param("budget") String budget,
                                      @Param("days") int days) {
        return recommendService.recommend(startName, budget, days);
    }

    @RequestMapping(value = "/recommendGet/{startName}/{budget}/{days}", method = RequestMethod.GET)
    @ResponseBody
    public ResponseUtil recommend(@PathVariable("startName") String startName,
                                  @PathVariable("budget") String budget,
                                  @PathVariable("days") int days) {
        return recommendService.recommend(startName, budget, days);
    }

    @RequestMapping(value = "/getInfo/{countryId}", method = RequestMethod.GET)
    @ResponseBody
    public ResponseUtil getCountryInfo(@PathVariable("countryId") String countryId) {
        return recommendService.getCountryInfo(countryId);
    }
}
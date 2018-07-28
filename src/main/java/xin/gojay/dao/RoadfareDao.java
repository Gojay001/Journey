package xin.gojay.dao;

import org.springframework.stereotype.Repository;
import xin.gojay.pojos.Roadfare;

import java.util.List;

/**
 * @author Gojay
 * @program Journey
 * @description 路费Service
 * @date 2018-07-26 11:52
 **/

@Repository
public interface RoadfareDao {

    /**
     * 根据出发地名称获取所需路费
     * @param startName 出发地名称
     * @return 路费实体列表
     */
    List<Roadfare> getRoadfare(String startName);
}

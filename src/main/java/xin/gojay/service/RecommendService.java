package xin.gojay.service;

import xin.gojay.pojos.Country;
import xin.gojay.pojos.Info;
import xin.gojay.pojos.Roadfare;
import xin.gojay.utils.ResponseUtil;

import java.util.List;

/**
 * @author gojay
 */
public interface RecommendService {

    List<Roadfare> getRoadfare(String startName);

    Info getInfo(String countryId);

    double getTotalFare(Country country, double fare1, double fare2);

    ResponseUtil recommend(String startName, String budget, int days);

    ResponseUtil getCountryInfo(String countryId);
}

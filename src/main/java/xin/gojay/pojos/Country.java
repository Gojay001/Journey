package xin.gojay.pojos;

/**
 * @author Gojay
 * @program Journey
 * @description 城市推荐评分实体类
 * @date 2018-07-26 15:13
 **/

public class Country {
    private String countryId;
    private String countryName;
    private String fare;
    private String summerScore;
    private String winterScore;
    private String budgetEnough = "true";

    public Country() {
    }

    public String getCountryId() {
        return countryId;
    }

    public void setCountryId(String countryId) {
        this.countryId = countryId;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getFare() {
        return fare;
    }

    public void setFare(String fare) {
        this.fare = fare;
    }

    public String getSummerScore() {
        return summerScore;
    }

    public void setSummerScore(String summerScore) {
        this.summerScore = summerScore;
    }

    public String getWinterScore() {
        return winterScore;
    }

    public void setWinterScore(String winterScore) {
        this.winterScore = winterScore;
    }

    public String getBudgetEnough() {
        return budgetEnough;
    }

    public void setBudgetEnough(String budgetEnough) {
        this.budgetEnough = budgetEnough;
    }

    @Override
    public String toString() {
        return "Country{" +
                "countryId='" + countryId + '\'' +
                ", countryName='" + countryName + '\'' +
                ", fare='" + fare + '\'' +
                ", summerScore='" + summerScore + '\'' +
                ", winterScore='" + winterScore + '\'' +
                ", budgetEnough=" + budgetEnough +
                '}';
    }
}
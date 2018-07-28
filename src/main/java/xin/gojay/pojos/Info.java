package xin.gojay.pojos;

/**
 * @author Gojay
 * @program Journey
 * @description 城市信息
 * @date 2018-07-26 16:01
 **/

public class Info {
    private String countryId;
    private String countryName;
    private String winterTemp;
    private String winterTempScore;
    private String summerTemp;
    private String summerTempScore;
    private String liveCost;
    private String liveScore;
    private String dailyCost;
    private String dailyScore;
    private String winterScore;
    private String summerScore;

    public Info() {
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

    public String getWinterTemp() {
        return winterTemp;
    }

    public void setWinterTemp(String winterTemp) {
        this.winterTemp = winterTemp;
    }

    public String getWinterTempScore() {
        return winterTempScore;
    }

    public void setWinterTempScore(String winterTempScore) {
        this.winterTempScore = winterTempScore;
    }

    public String getSummerTemp() {
        return summerTemp;
    }

    public void setSummerTemp(String summerTemp) {
        this.summerTemp = summerTemp;
    }

    public String getSummerTempScore() {
        return summerTempScore;
    }

    public void setSummerTempScore(String summerTempScore) {
        this.summerTempScore = summerTempScore;
    }

    public String getLiveCost() {
        return liveCost;
    }

    public void setLiveCost(String liveCost) {
        this.liveCost = liveCost;
    }

    public String getLiveScore() {
        return liveScore;
    }

    public void setLiveScore(String liveScore) {
        this.liveScore = liveScore;
    }

    public String getDailyCost() {
        return dailyCost;
    }

    public void setDailyCost(String dailyCost) {
        this.dailyCost = dailyCost;
    }

    public String getDailyScore() {
        return dailyScore;
    }

    public void setDailyScore(String dailyScore) {
        this.dailyScore = dailyScore;
    }

    public String getWinterScore() {
        return winterScore;
    }

    public void setWinterScore(String winterScore) {
        this.winterScore = winterScore;
    }

    public String getSummerScore() {
        return summerScore;
    }

    public void setSummerScore(String summerScore) {
        this.summerScore = summerScore;
    }

    @Override
    public String toString() {
        return "Info{" +
                "countryId='" + countryId + '\'' +
                ", countryName='" + countryName + '\'' +
                ", winterTemp='" + winterTemp + '\'' +
                ", winterTempScore='" + winterTempScore + '\'' +
                ", summerTemp='" + summerTemp + '\'' +
                ", summerTempScore='" + summerTempScore + '\'' +
                ", liveCost='" + liveCost + '\'' +
                ", liveScore='" + liveScore + '\'' +
                ", dailyCost='" + dailyCost + '\'' +
                ", dailyScore='" + dailyScore + '\'' +
                ", winterScore='" + winterScore + '\'' +
                ", summerScore='" + summerScore + '\'' +
                '}';
    }
}
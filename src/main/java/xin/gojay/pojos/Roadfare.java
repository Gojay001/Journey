package xin.gojay.pojos;

/**
 * @program Journey
 * @description 路费实体类
 * @author Gojay
 * @date 2018-07-26 11:45
 **/

public class Roadfare {
    private int fareId;
    private String startId;
    private String startName;
    private String aimId;
    private String aimName;
    private String cost;

    public Roadfare() {
    }

    public int getFareId() {
        return fareId;
    }

    public void setFareId(int fareId) {
        this.fareId = fareId;
    }

    public String getStartId() {
        return startId;
    }

    public void setStartId(String startId) {
        this.startId = startId;
    }

    public String getStartName() {
        return startName;
    }

    public void setStartName(String startName) {
        this.startName = startName;
    }

    public String getAimId() {
        return aimId;
    }

    public void setAimId(String aimId) {
        this.aimId = aimId;
    }

    public String getAimName() {
        return aimName;
    }

    public void setAimName(String aimName) {
        this.aimName = aimName;
    }

    public String getCost() {
        return cost;
    }

    public void setCost(String cost) {
        this.cost = cost;
    }

    @Override
    public String toString() {
        return "Roadfare{" +
                "fareId=" + fareId +
                ", startId='" + startId + '\'' +
                ", startName='" + startName + '\'' +
                ", aimId='" + aimId + '\'' +
                ", aimName='" + aimName + '\'' +
                ", cost='" + cost + '\'' +
                '}';
    }
}
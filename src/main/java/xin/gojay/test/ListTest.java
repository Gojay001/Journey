package xin.gojay.test;

import xin.gojay.pojos.Roadfare;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Gojay
 * @program Journey
 * @description List测试类
 * @date 2018-07-26 15:27
 **/

public class ListTest {
    public static void main(String[] args) {
        ArrayList<Roadfare> roadfareArrayList = new ArrayList<>();
        Roadfare roadfare = new Roadfare();
        roadfare.setAimId("11");
        roadfareArrayList.add(roadfare);

        Roadfare roadfare1 = new Roadfare();
        roadfare1.setAimName("重庆");
        roadfareArrayList.add(roadfare1);

        for (Roadfare fare : roadfareArrayList) {
            System.out.println(fare);
        }
        System.out.println(roadfareArrayList.get(1));
    }
}
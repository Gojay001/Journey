package xin.gojay.utils;

import java.text.DecimalFormat;

/**
 * @author Gojay
 * @program Journey
 * @description Double与String互转工具类
 * @date 2018-07-27 10:54
 **/

public class DoubleUtil {
    private static DecimalFormat decimalFormat = new DecimalFormat("#0.000");

    public static String doubleToString(double number) {
        double formatNum = Double.parseDouble(decimalFormat.format(number));
        return Double.toString(formatNum);
    }

    public static double stringToDouble(String text) {
        double number = Double.parseDouble(text);
        return Double.parseDouble(decimalFormat.format(number));
    }

    public static void main(String[] args) {
        double num = 1.2341;
        String text = "1.33456";
        System.out.println(doubleToString(num));
        System.out.println(stringToDouble(text));
        System.out.println(Double.parseDouble(decimalFormat.format(num)) < stringToDouble(text));
    }
}
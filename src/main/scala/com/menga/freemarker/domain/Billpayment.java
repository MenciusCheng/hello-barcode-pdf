package com.menga.freemarker.domain;

/**
 * 付款单
 *
 * Created by Marvel on 2019/7/5.
 */
public class Billpayment {
    /**
     * 公司名称
     */
    private String companyName;

    /**
     * 公司编号
     */
    private String companyCode;

    /**
     * 订单编号
     */
    private String orderNo;

    /**
     * 总金额的整数部分
     */
    private Integer amountIntegerPart;

    /**
     * 总金额的小数部分
     */
    private Integer amountFractionalPart;
    /**
     * 泰版总金额
     */
    private String amountInWords;

    /**
     * 条形码
     */
    private String barcode;
    /**
     * 二维码
     */
    private String qrcode;

    public Billpayment() {
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyCode() {
        return companyCode;
    }

    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getAmountIntegerPart() {
        return amountIntegerPart;
    }

    public void setAmountIntegerPart(Integer amountIntegerPart) {
        this.amountIntegerPart = amountIntegerPart;
    }

    public Integer getAmountFractionalPart() {
        return amountFractionalPart;
    }

    public void setAmountFractionalPart(Integer amountFractionalPart) {
        this.amountFractionalPart = amountFractionalPart;
    }

    public String getAmountInWords() {
        return amountInWords;
    }

    public void setAmountInWords(String amountInWords) {
        this.amountInWords = amountInWords;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode;
    }
}

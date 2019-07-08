package com.menga.freemarker.domain;

/**
 * Created by Marvel on 2019/7/5.
 */
public class Sheep {
    private String name;
    private Integer age;
    private String fish;
    private String qrcode;
    private String barcode;

    public Sheep(String name, Integer age) {
        this.name = name;
        this.age = age;
    }

    public Sheep(String name, Integer age, String fish, String qrcode, String barcode) {
        this.name = name;
        this.age = age;
        this.fish = fish;
        this.qrcode = qrcode;
        this.barcode = barcode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getFish() {
        return fish;
    }

    public void setFish(String fish) {
        this.fish = fish;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }
}

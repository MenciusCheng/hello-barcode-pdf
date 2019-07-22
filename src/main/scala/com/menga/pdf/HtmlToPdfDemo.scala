package com.menga.pdf

import java.io.{ByteArrayInputStream, FileInputStream, FileOutputStream}

import com.itextpdf.html2pdf.resolver.font.DefaultFontProvider
import com.itextpdf.html2pdf.{ConverterProperties, HtmlConverter}
import com.itextpdf.io.font.FontProgramFactory
import com.menga.freemarker.FreeMarkerHelper
import com.menga.freemarker.domain.{Billpayment, Cat, Sheep}
import com.menga.helper.{BarcodeHelper, ImageHelper}

/**
  * Created by Marvel on 2019/7/2.
  */
object HtmlToPdfDemo {

  def main(args: Array[String]): Unit = {
    testBillpayment()
  }

  /**
    * 添加字体
    */
  private def getProperties: ConverterProperties = {
    val fonts = List(
      "fonts/cour.ttf",
      "fonts/courbd.ttf"
    )

    val properties = new ConverterProperties
    val fontProvider = new DefaultFontProvider
    for (font <- fonts) {
      val fontProgram = FontProgramFactory.createFont(ClassLoader.getSystemResource(font).getFile)
      fontProvider.addFont(fontProgram)
    }
    properties.setFontProvider(fontProvider)
  }

  private def testBillpayment3(): Unit = {
    val stream = new FileOutputStream("output/billpayment3.pdf")
    val html = new FileInputStream(ClassLoader.getSystemResource("templates/billpayment3.html").getFile)
    HtmlConverter.convertToPdf(html, stream)
  }

  private def testBillpayment(): Unit = {
    val stream = new FileOutputStream("output/billpayment.pdf")

    // 订单总金额的整数部分
    val amountIntegerPart = 3000
    // 订单总金额的分数部分
    val amountFractionalPart = 20
    // 订单总金额的泰文
    val amountInWords = "TWO HUNDRED"

    val content = "|010556120034700\n\r11111111\n\r2019070302921\n\r2172100"
    val qrcode = ImageHelper.encodeImg2Base64(BarcodeHelper.createQRImage(content, 200, 200), "png")
    val barcode = ImageHelper.encodeImg2Base64(BarcodeHelper.createBarImage(content, 300, 100), "png")
    val barcodeNumber = content.replaceAll("\n\r", " ")

    val billpayment = new Billpayment
    billpayment.setOrderNo("P2019070802825")
    billpayment.setCompanyName("0007")
    billpayment.setCompanyCode("TENGXUN SUPPLIER")
    billpayment.setAmountIntegerPart(amountIntegerPart)
    billpayment.setAmountFractionalPart(amountFractionalPart)
    billpayment.setAmountInWords(amountInWords)
    billpayment.setBarcode(barcode)
    billpayment.setQrcode(qrcode)
    billpayment.setBarcodeNumber(barcodeNumber)

    val html = FreeMarkerHelper.createBillpaymentHtml(billpayment)

    HtmlConverter.convertToPdf(new ByteArrayInputStream(html), stream, getProperties)
  }

  private def testSheep(): Unit = {
    val stream = new FileOutputStream("output/sheep2pdf.pdf")
    val sheep = new Sheep("gasheep", 25)

    val fish = ImageHelper.encodeImg2Base64("images/fish.jpg", "jpg")
    sheep.setFish(fish)

    val content = "|010556120034700\r\n11111111\r\n2019070302921\r\n2172100"
    val qrcode = ImageHelper.encodeImg2Base64(BarcodeHelper.createQRImage(content, 200, 200), "png")
    val barcode = ImageHelper.encodeImg2Base64(BarcodeHelper.createBarImage(content, 300, 100), "png")

    sheep.setBarcode(barcode)
    sheep.setQrcode(qrcode)

    val html = FreeMarkerHelper.createSheepHtml(sheep)
    HtmlConverter.convertToPdf(new ByteArrayInputStream(html), stream)
  }

  private def testCat(): Unit = {
    val stream = new FileOutputStream("output/cat2pdf.pdf")
    val html = FreeMarkerHelper.createCatHtml(new Cat("weiweicat", 25))
    HtmlConverter.convertToPdf(new ByteArrayInputStream(html), stream)
  }

  private def test(): Unit = {
    val stream = new FileOutputStream("output/html2pdf.pdf")
    val html = "<h1>Test</h1><p>Hello World</p><img src=\"dog.bmp\">"
    HtmlConverter.convertToPdf(html, stream)
  }
}
package com.menga.pdf

import java.io.{ByteArrayInputStream, FileOutputStream}

import com.itextpdf.html2pdf.HtmlConverter
import com.menga.freemarker.FreeMarkerHelper
import com.menga.freemarker.domain.{Cat, Sheep}
import com.menga.helper.{BarcodeHelper, ImageHelper}

/**
  * Created by Marvel on 2019/7/2.
  */
object HtmlToPdfDemo {

  def main(args: Array[String]): Unit = {
    testSheep()
  }

  private def testSheep(): Unit = {
    val stream = new FileOutputStream("output/sheep2pdf.pdf")
    val sheep = new Sheep("gasheep", 25)

    val fish = ImageHelper.encodeImg2Base64("images/fish.jpg", "jpg")
    sheep.setFish(fish)

    val content = "|010556120034700\r\n11111111\r\n2019070302921\r\n2172100"
    val qrcode = ImageHelper.encodeImg2Base64(BarcodeHelper.matrixToByteArray(BarcodeHelper.createQRCode(content, 200, 200)), "png")
    val barcode = ImageHelper.encodeImg2Base64(BarcodeHelper.matrixToByteArray(BarcodeHelper.createBarCode(content, 300, 100)), "png")

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
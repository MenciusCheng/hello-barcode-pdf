package com.menga.helper

import java.io.{ByteArrayOutputStream, File}
import java.util

import com.google.zxing.client.j2se.MatrixToImageWriter
import com.google.zxing.common.BitMatrix
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel
import com.google.zxing.{BarcodeFormat, EncodeHintType, MultiFormatWriter}

/**
  * Created by Marvel on 2019/7/8.
  */
object BarcodeHelper {

  /**
    * 二维码
    */
  def createQRCode(content: String, width: Int, height: Int): BitMatrix = {
    val hints = new util.Hashtable[EncodeHintType, Any]
    // 指定纠错等级,纠错级别（L 7%、M 15%、Q 25%、H 30%）
    hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L)
    // 内容所使用字符集编码
    hints.put(EncodeHintType.CHARACTER_SET, "utf-8")
    //hints.put(EncodeHintType.MAX_SIZE, 350);//设置图片的最大值
    //hints.put(EncodeHintType.MIN_SIZE, 100);//设置图片的最小值
    hints.put(EncodeHintType.MARGIN, 1) //设置二维码边的空度，非负数

    new MultiFormatWriter().encode(
      content, //要编码的内容
      BarcodeFormat.QR_CODE, //编码类型
      width, // 条形码的宽度
      height, // 条形码的高度
      hints // 生成条形码时的一些配置,此项可选
    )
  }

  /**
    * 条形码
    */
  def createBarCode(content: String, width: Int, height: Int): BitMatrix = {
    new MultiFormatWriter().encode(
      content, //要编码的内容
      BarcodeFormat.CODE_128, //编码类型
      width, // 条形码的宽度
      height // 条形码的高度
    )
  }

  def matrixToByteArray(matrix: BitMatrix): Array[Byte] = {
    val out = new ByteArrayOutputStream
    MatrixToImageWriter.writeToStream(matrix, "png", out)
    out.close()
    out.toByteArray
  }

  def createMatrixFile(matrix: BitMatrix, path: String): Unit = {
    MatrixToImageWriter.writeToPath(matrix, "png", new File(path).toPath)
  }

  def createQRImage(content: String, width: Int, height: Int): Array[Byte] = {
    matrixToByteArray(createQRCode(content, width, height))
  }

  def createBarImage(content: String, width: Int, height: Int): Array[Byte] = {
    matrixToByteArray(createBarCode(content, width, height))
  }

  def main(args: Array[String]): Unit = {
    val qrContent = "大家好，我是威威猫，很高兴认识大家"
    createMatrixFile(createQRCode(qrContent, 200, 200), "output/qrcode.png")
    val barContent = "2222222222"
    createMatrixFile(createBarCode(barContent, 500, 200), "output/barcode.png")
  }
}

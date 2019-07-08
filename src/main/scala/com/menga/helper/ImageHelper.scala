package com.menga.helper

import java.io.InputStream

import sun.misc.BASE64Encoder

object ImageHelper {
  /**
    * 将图片转为base64
    */
  def encodeImg2Base64(imageBytes: Array[Byte], imageType: String): String = {
    s"data:${imageType};base64,${new BASE64Encoder().encode(imageBytes)}"
  }

  /**
    * 将指定路径的图片转为base64
    */
  def encodeImg2Base64(src: String, imageType: String): String = {
    val in: InputStream = this.getClass.getClassLoader.getResourceAsStream(src)
    assert(in != null, s"InputStream is null, src=${src}")
    val bytes = Stream.continually(in.read).takeWhile(-1 !=).map(_.toByte).toArray
    encodeImg2Base64(bytes, imageType)
  }
}

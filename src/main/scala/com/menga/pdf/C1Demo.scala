package com.menga.pdf

import com.itextpdf.io.image.ImageDataFactory
import com.itextpdf.kernel.pdf.{PdfDocument, PdfWriter}
import com.itextpdf.layout.Document
import com.itextpdf.layout.element.{Image, Paragraph}

/**
  * Created by Marvel on 2019/7/2.
  */
object C1Demo {

  def main(args: Array[String]): Unit = {
    val writer = new PdfWriter("output/hello_world.pdf")
    val pdf = new PdfDocument(writer)
    val document = new Document(pdf)

    val dog = new Image(ImageDataFactory.create(ClassLoader.getSystemResource("images/dog.bmp").getFile))

    document.add(new Paragraph("Hello World!").add(dog))

    document.close()
  }
}

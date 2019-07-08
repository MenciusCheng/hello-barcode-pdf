package com.menga.freemarker

import java.io.{ByteArrayOutputStream, OutputStreamWriter}

import com.menga.freemarker.domain.{Cat, Sheep}
import freemarker.template.{Configuration, TemplateExceptionHandler}

/**
  * Created by Marvel on 2019/7/3.
  */
object FreeMarkerHelper {

  private lazy val configuration: Configuration = {
    val cfg = new Configuration(Configuration.VERSION_2_3_22)
    cfg.setClassForTemplateLoading(getClass, "/templates")
    cfg.setDefaultEncoding("UTF-8")
    cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER)
    cfg
  }

  private lazy val catTemplate = configuration.getTemplate("cat.ftl")

  private lazy val sheepTemplate = configuration.getTemplate("sheep.ftl")

  def createCatHtml(data: Cat): Array[Byte] = {
    val out = new ByteArrayOutputStream
    catTemplate.process(data, new OutputStreamWriter(out, "UTF-8"))
    out.close()
    out.toByteArray
  }

  def createSheepHtml(data: Sheep): Array[Byte] = {
    val out = new ByteArrayOutputStream
    sheepTemplate.process(data, new OutputStreamWriter(out, "UTF-8"))
    out.close()
    out.toByteArray
  }

  def main(args: Array[String]): Unit = {
    testCat()
  }

  private def testCat(): Unit = {
    val html = createCatHtml(new Cat("weiweicat", 18))
    System.out.println(new String(html))
  }

}

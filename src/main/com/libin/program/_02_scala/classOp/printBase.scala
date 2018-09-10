package main.com.libin.program._02_scala.classOp

import main.com.libin.program._02_scala.classOp.printImpl.Stu

import scala.reflect.ClassTag

/**
  * Copyright (c) 2018/9/10. xixi Inc. All Rights Reserved.
  * Authors: libin <2578858653@qq.com>
  * <p>
  * Purpose : 
  */
class printBase {

  def printInfo[T: ClassTag](t: T): Unit = {
    println(t)
    t match {
      case stu: Stu => println(stu.name)
      case _ => println("Null")
    }
  }

}
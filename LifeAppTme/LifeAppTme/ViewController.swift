//
//  ViewController.swift
//  LifeAppTme
//
//  Created by 赤松伸樹 on 2015/11/18.
//  Copyright © 2015年 tsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func tappdedOK(sender: AnyObject) {
        view.backgroundColor=UIColor.greenColor()
    }
    
    func world(){
        let HL = "Hello,world!"
        print(HL)
    }
    
    //P493~四角形
    func makeBoxImage(width w:CGFloat,height h:CGFloat) -> UIImage{
        let size:CGSize = CGSize(width:w, height:h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        let context = UIGraphicsGetCurrentContext()
        
        var boxRect = CGRect(x: 0, y: 0, width: w, height: h)
        let lineWidth:CGFloat = 6.0
        boxRect.insetInPlace(dx: lineWidth/2, dy: lineWidth/2)
        
        let drawPath = UIBezierPath(rect:boxRect)
        
        CGContextSetRGBFillColor(context, 0.0, 0.0, 10.0, 1.0)
        drawPath.fill()
        
        CGContextSetRGBStrokeColor(context, 0.0, 0.0, 1.0, 1.0)
        drawPath.lineWidth = 4.0
        
        drawPath.stroke()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
//楕円形
    func makeRoundRectImage(width w:CGFloat,height h:CGFloat) -> UIImage{
        let size:CGSize = CGSize(width:w, height:h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        let context = UIGraphicsGetCurrentContext()
        
        var drawRect = CGRect(x: 0, y: 0, width: w, height: h)
        let lineWidth:CGFloat = 1.0
        drawRect.insetInPlace(dx: lineWidth/2, dy: lineWidth/2)
        
        let drawPath = UIBezierPath(roundedRect:drawRect,cornerRadius: 10)
        
        CGContextSetRGBFillColor(context, 0.0, 1.0, 1.0, 1.0)
        drawPath.fill()
        
        CGContextSetRGBStrokeColor(context, 0.5, 0.0, 0.5, 1.0)
        drawPath.lineWidth = lineWidth
        drawPath.stroke()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
        
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // test
//        let num=10
//        print(num,"こんｗ")
//        world()
//        
//        var testTaple = (thisWillKillMe:"これはたぷる",2000,9.8)
//        
//        testTaple.thisWillKillMe = "Kill me Baby!"
//        print(testTaple)
//        print(testTaple.0,"and",testTaple.2)
        
//        let numList = [1,2,3,4,5,6,7,8,9]
//        var sum = 0
//        for num in numList {
//            sum += num
//        }
//        print("合計は\(sum)")
//        
//        var a:UInt32, b:UInt32, c:UInt2
//        var total:UInt32
//        repeat {
//            a = arc4random_uniform(13)+1 //0~12の変数+1
//            b = arc4random_uniform(13)+1 //0~12の変数+1
//            c = arc4random_uniform(13)+1 //0~12の変数+1
//            total = a + b + c
//        }  while (total != 21)
//        print("\(a),\(b),\(c)")

//***************四角描画*******************
        let box1 = BoxView()
        box1.frame = CGRect(x: 50,y: 100,width:100,height: 80)
        view.addSubview(box1)
        
        let box2 = BoxView()
        box2.frame = CGRect(x: 180,y: 100,width:100,height: 100)
        box2.fillColor = UIColor.lightGrayColor()
        box2.lineColor = UIColor.blueColor()
        box2.lineWidth = 20.0
        view.addSubview(box2)
        
//        let boxImage = makeBoxImage(width: 240, height: 120)
//        let boxView = UIImageView(image: boxImage)
//        
//        boxView.center = view.center
//        view.addSubview(boxView)
        
        
        let drawImage = makeRoundRectImage(width: 300, height: 200)
        let roundRectView = UIImageView(image:drawImage)
        
        roundRectView.center = view.center
        view.addSubview(roundRectView)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


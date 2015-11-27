//
//  BoxView.swift
//  LifeAppTme
//
//  Created by 神澤義人 on 2015/11/27.
//  Copyright © 2015年 tsukuba. All rights reserved.
//

import UIKit

class BoxView: UIView {
    
    var fillColor = UIColor.yellowColor()
    var lineColor = UIColor.redColor()
    var lineWidth:CGFloat = 2.0

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        var boxRect = bounds
        boxRect.insetInPlace(dx: lineWidth/2, dy: lineWidth/2)
        let drawPath = UIBezierPath(rect: boxRect)
        
        fillColor.setFill()
        drawPath.fill()
        
        lineColor.setStroke()
        drawPath.lineWidth = lineWidth
        drawPath.stroke()
    }
    
}

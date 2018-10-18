//
//  MyView.swift
//  第五次上机作业
//
//  Created by fanyunyimac on 2018/10/18.
//  Copyright © 2018年 范云翼. All rights reserved.
//

import UIKit

class MyView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        //蓝色边界
        UIColor.blue.setStroke()
        path.stroke()
        //红色内部
        UIColor.red.setFill()
        path.fill()
    }

}

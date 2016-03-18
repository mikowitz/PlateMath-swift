//
//  Incrementer.swift
//  PlateMath
//
//  Created by Michael Berkowitz on 3/9/16.
//  Copyright © 2016 Michael Berkowitz. All rights reserved.
//

import UIKit

class Incrementer: UIView {
    static let darkGray : CGColorRef = UIColor(colorLiteralRed: 0.4, green: 0.4, blue: 0.4, alpha: 1.0).CGColor as CGColorRef
    static let lightGray : CGColorRef = UIColor(colorLiteralRed: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).CGColor as CGColorRef
    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.backgroundColor = UIColor.grayColor()


        //self.layer.insertSublayer(gradient, atIndex: 0)
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    func decrease() {
        let gradient = CAGradientLayer()
        gradient.colors = [Incrementer.darkGray, Incrementer.lightGray]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.75, y: 1.0)
        gradient.frame = self.bounds
        self.layer.insertSublayer(gradient, atIndex: 0)
    }
    
    func increase() {
        let gradient = CAGradientLayer()
        gradient.colors = [Incrementer.darkGray, Incrementer.lightGray]
        gradient.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.25, y: 1.0)
        gradient.frame = self.bounds
        self.layer.insertSublayer(gradient, atIndex: 0)
        
    }
    
    func reset() {
//        self.layer.sublayers?.removeAtIndex(0)
        self.layer.sublayers?[0].removeFromSuperlayer()
    }
}

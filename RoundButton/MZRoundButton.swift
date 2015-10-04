//
//  MZRoundButton.swift
//  RoundButton
//
//  Created by Victor Chen on 10/1/15.
//  Copyright © 2015 Mt Zendo Inc. All rights reserved.
//

import Foundation
import UIKit

import Chameleon
//#import "Chameleon.h"

class MZRoundButton: UIButton {
    var fillColor:UIColor = UIColor.clearColor()

    
    func make(){
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "onTapGesture:")
        tapGesture.cancelsTouchesInView = false
        self.addGestureRecognizer(tapGesture)

        
    }
    
    override var backgroundColor: UIColor! {
        set{
            self.fillColor = newValue
        }
        get{
            return nil
        }
        
    }
//    private var _frame: CGRect? = nil
//    override var frame: CGRect{
//        set{
//            var newRect:CGRect = newValue as CGRect
//            if(newRect.size.width != newRect.size.height){
//                newRect.size.height = newValue.size.width
//                self.frame = newRect
//            }
//            
////            self._frame = newRect
//
//        }
//        get{
//            return self.frame
//        }
////        didSet{
////            NSLog("aaaa")
////        }
//    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.make()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.make()
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        
        let path = UIBezierPath(ovalInRect: rect)
        self.fillColor.setFill()
        path.fill()
    }
    
    
    @IBAction func onTapGesture(sender: AnyObject) {
        let animation:CAKeyframeAnimation = CAKeyframeAnimation.init(keyPath: "transform.scale")
        animation.values = [1, 1.2, 1.3, 1.4, 1.5]
        animation.timingFunctions = [CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseOut)]
        animation.duration = 0.2
        self.imageView?.layer.addAnimation(animation, forKey: "bounce")
        
        self.titleLabel?.layer.addAnimation(animation, forKey: "bounce")
    }
    
  
}
//
//  MZRoundButton.swift
//  RoundButton
//
//  Created by Victor Chen on 10/1/15.
//  Copyright © 2015 Mt Zendo Inc. All rights reserved.
//

import Foundation
import UIKit

class MZRoundButton: UIButton {
    var fillColor:UIColor = UIColor.clearColor()

    
    func make(){
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "onTapGesture:")
        tapGesture.cancelsTouchesInView = false
        self.addGestureRecognizer(tapGesture)

//        if(self.frame.size.width != self.frame.size.height){
//            let rect:CGRect = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.width)
//            self.frame = rect
//        }
        
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
//        var newFrame:CGRect = frame sdfasdfasfasfasfas
        
//        
//        
//        if(frame.size.width != frame.size.height){
//            newFrame.size.height = frame.size.width
//        }
        
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
        
//        self.imageView

    }
    
  
}
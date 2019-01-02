//
//  ShapView.swift
//  Draw-Custom-Shape-View
//
//  Created by Hiten iMac on 02/01/19.
//  Copyright © 2019 Hiten iMac. All rights reserved.
//

import Foundation
import UIKit

class ShapView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: 0, y: self.frame.width/2))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        context.setFillColor(UIColor.red.cgColor)
        context.fillPath()
        
    }
}

class ShapViewClass : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: 0, y: self.frame.width/2))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        context.setFillColor(UIColor.purple.cgColor)
        context.fillPath()
        
    }
}

class ShapViewRight : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: self.frame.width * 2, y: 0.0))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        context.setFillColor(UIColor.yellow.cgColor)
        context.fillPath()
        
    }
}

class ShapViewRightClass : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: self.frame.width * 2, y: 0.0))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        context.setFillColor(UIColor.blue.cgColor)
        context.fillPath()
        
    }
}


class ShapViewRightClassRed : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: self.frame.width * 2, y: 0.0))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        context.setFillColor(hexColor(hex: "#B20000").cgColor)
        context.fillPath()
        
    }
    
    
    func hexColor(hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
}

class ShapViewRightClassGreen : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        
        guard let context = UIGraphicsGetCurrentContext() else { return }
        
        context.beginPath()
        context.move(to: CGPoint(x: self.frame.width * 2, y: 0.0))
        context.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
        context.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        context.closePath()
        
        let ColorClass = ShapViewRightClassRed()
        context.setFillColor(ColorClass.hexColor(hex: "#007F00").cgColor)
        context.fillPath()
        
    }
   
}

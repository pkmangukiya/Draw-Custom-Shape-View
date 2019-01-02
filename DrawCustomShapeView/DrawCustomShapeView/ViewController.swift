//
//  ViewController.swift
//  DrawCustomShapeView
//
//  Created by Hiten iMac on 02/01/19.
//  Copyright © 2019 Hiten iMac. All rights reserved.
//

import UIKit
import Draw_Custom_Shape_View

class ViewController: UIViewController {

    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someString = Service.doSomething()
        print(someString)
        
        let chatBubbleView = ShapView(frame: CGRect(x: 0, y: 0, width: leftView.frame.width, height: leftView.frame.height))
        chatBubbleView.backgroundColor = UIColor.clear
        leftView.addSubview(chatBubbleView)
    }


}


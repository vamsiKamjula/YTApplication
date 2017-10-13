//
//  DetailLauncher.swift
//  YTApplication
//
//  Created by vamsi krishna reddy kamjula on 10/12/17.
//  Copyright © 2017 vamsikvkrApplicationDevelopment. All rights reserved.
//

import UIKit

class AnimatedDetailsVC: NSObject {
    
    var circle = UIView()
    
    var startingPoint = CGPoint.zero {
        didSet {
            circle.center = startingPoint
        }
    }
    
    var circleColor = UIColor.white
    
    var duration = 0.3
    
    enum CircularTranisitionMode: Int {
        case present, dismiss, pop
    }
    
    var transitionMode: CircularTranisitionMode = .present
}

extension AnimatedDetailsVC

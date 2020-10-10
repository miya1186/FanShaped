//
//  ViewController.swift
//  FanShaped
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let drawImage = drawLine()
        let drawView = UIImageView(image: drawImage)
        view.addSubview(drawView)
    }
    
    func drawLine() -> UIImage {
        
        let size = view.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        
        let center = CGPoint(x: view.center.x, y: 200)
        let arcPath = UIBezierPath(
            arcCenter: center,
            radius: 80.0,
            startAngle: CGFloat(-Double.pi/2),
            endAngle: CGFloat(Double.pi/4*3),
            clockwise: true)
        
        arcPath.addLine(to: center)
        arcPath.close()
        
        UIColor.cyan.setFill()
        arcPath.stroke()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}




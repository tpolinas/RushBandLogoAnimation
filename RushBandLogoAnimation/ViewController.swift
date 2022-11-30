//
//  ViewController.swift
//  RushBandLogoAnimation
//
//  Created by Polina Tikhomirova on 30.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var someImageView: UIImageView!
    
    @IBAction func didTapAnimate(_ sender: Any) {
        animateMe()
    }
    
    private let duration = 40.0
    
    func animateMe() {
        let someLayer = CAShapeLayer()
        someLayer.path = UIBezierPath.rushLogo().cgPath
        someLayer.lineWidth = 2.0
        someLayer.strokeColor = UIColor.red.cgColor
        someLayer.fillColor = UIColor.clear.cgColor
        
        let strokeAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeEnd))
        strokeAnimation.fromValue = 0.0
        strokeAnimation.toValue = 1.0
        strokeAnimation.duration = duration
        
        someImageView.layer.addSublayer(someLayer)
        
        
        someLayer.add(strokeAnimation, forKey: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


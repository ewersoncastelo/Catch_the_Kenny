//
//  ViewController.swift
//  Catch the Kenny
//
//  Created by ewerson castelo on 12/07/20.
//  Copyright © 2020 ewerson castelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let shapeLayer = CAShapeLayer()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = UIColor(white: 35.0 / 255.0, alpha: 1.0)
		
		// lets drawing shape circle
		let center = view.center
		
		//create track layer (shadonws)
		let trackLayer = CAShapeLayer()
		
		let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi	 / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
		trackLayer.path = circularPath.cgPath

		// Config tracker layer
		trackLayer.strokeColor = UIColor.lightGray.cgColor
		trackLayer.lineWidth = 10
		trackLayer.fillColor = UIColor.clear.cgColor
		trackLayer.lineCap = CAShapeLayerLineCap.round
		view.layer.addSublayer(trackLayer)
		
		shapeLayer.path = circularPath.cgPath
		
		// add progress border
		shapeLayer.strokeColor = UIColor.red.cgColor
		shapeLayer.lineWidth = 10
		shapeLayer.fillColor = UIColor.clear.cgColor
		shapeLayer.lineCap = CAShapeLayerLineCap.round
		
		// define progress to border width in float number 0.1, 0.2 ...
		shapeLayer.strokeEnd = 0
		
		view.layer.addSublayer(shapeLayer)
		
		// Add tapped animation in to screen
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
	}
	
	@objc private func handleTap(){
		// catch tapped in to screen and make animation
		let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
		basicAnimation.toValue = 1
		basicAnimation.duration = 2
		basicAnimation.fillMode = .forwards
		basicAnimation.isRemovedOnCompletion = false
		shapeLayer.add(basicAnimation, forKey: "urSoBasic")
	}


}


//
//  ViewController.swift
//  Catch the Kenny
//
//  Created by ewerson castelo on 12/07/20.
//  Copyright © 2020 ewerson castelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let shapeLayer : CAShapeLayer = {
		let shape = CAShapeLayer()
		return shape
	}()
	
	// ViewContent
	let containerView: UIView = {
		let view = UIView()
		view.backgroundColor = .blue
		view.translatesAutoresizingMaskIntoConstraints = false
	//	view.backgroundColor = .red
		return view
	}()
	
	let layerShapeContainer: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .red
		return view
	}()
	
	let imageView : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.sizeToFit()
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		return image
	}()

	fileprivate func drawingCircle() {
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
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = UIColor(white: 35.0 / 255.0, alpha: 1.0)
		
		drawingCircle()
		
		
		view.addSubview(containerView)
		containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		containerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
		containerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
		containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		
		
		containerView.addSubview(layerShapeContainer)
		layerShapeContainer.widthAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.heightAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 29).isActive = true
		layerShapeContainer.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true

		layerShapeContainer.layer.addSublayer(shapeLayer)
		
		
//		containerView.addSubview(imageView)
//		imageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
//		imageView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
//		imageView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
//		imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
		
		
		// Add tapped animation in to screen
		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
	}
	
	private func beginTimeCountDown(){
		print("start timer")
	}
	
	fileprivate func animatedCircle() {
		// catch tapped in to screen and make animation
		let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
		basicAnimation.toValue = 1
		basicAnimation.duration = 2
		basicAnimation.fillMode = .forwards
		basicAnimation.isRemovedOnCompletion = false
		shapeLayer.add(basicAnimation, forKey: "urSoBasic")
	}
	
	@objc private func handleTap(){
		
		beginTimeCountDown()
		
		animatedCircle()
	}


}


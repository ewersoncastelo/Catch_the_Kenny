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
	
	// Countdown Label
	let countDownLabel : UILabel = {
		let label = UILabel()
		label.text = "10"
		label.textColor = UIColor(red: 1.0, green: 118.0 / 255.0, blue: 23.0 / 255.0, alpha: 1.0)
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 32)
		return label
	}()
	
	// Score Label
	let scoreLabel : UILabel = {
		let label = UILabel()
		label.text = "score: 5"
		label.font = UIFont(name: "Arial", size: 58.0)
		label.textColor = UIColor(red: 254.0 / 255.0, green: 223.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
		return label
	}()
	
	// ViewContent
	let containerView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let layerShapeContainer: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
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
		//create track layer (shadonws)
		let trackLayer = CAShapeLayer()
		
		let circularPath = UIBezierPath(arcCenter: .zero, radius: 70, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
		trackLayer.path = circularPath.cgPath
		
		// Config tracker layer
		trackLayer.strokeColor = UIColor(red: 254.0 / 255.0, green: 223.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0).cgColor
		trackLayer.lineWidth = 10
		trackLayer.fillColor = UIColor.clear.cgColor
		trackLayer.lineCap = CAShapeLayerLineCap.round
		trackLayer.position = layerShapeContainer.center
		layerShapeContainer.layer.addSublayer(trackLayer)
		
		shapeLayer.path = circularPath.cgPath
		
		// add progress border
		shapeLayer.strokeColor = UIColor(red: 1.0, green: 118.0 / 255.0, blue: 23.0 / 255.0, alpha: 1.0).cgColor
		shapeLayer.lineWidth = 10
		shapeLayer.fillColor = UIColor.clear.cgColor
		shapeLayer.lineCap = CAShapeLayerLineCap.round
		shapeLayer.position = layerShapeContainer.center
		shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi / 2, 0, 0, 1)
		
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
		layerShapeContainer.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 100).isActive = true
		layerShapeContainer.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 70).isActive = true

		layerShapeContainer.layer.addSublayer(shapeLayer)
		layerShapeContainer.addSubview(countDownLabel)
		countDownLabel.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
		countDownLabel.center = layerShapeContainer.center
		
		containerView.addSubview(scoreLabel)
		scoreLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//		scoreLabel.widthAnchor.constraint(equalToConstant: 132).isActive = true
//		scoreLabel.heightAnchor.constraint(equalToConstant: 132).isActive = true
//		scoreLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 100).isActive = true
//		scoreLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 70).isActive = true
		
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
		shapeLayer.strokeEnd = 0
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


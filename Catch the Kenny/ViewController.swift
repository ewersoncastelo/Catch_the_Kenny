//
//  ViewController.swift
//  Catch the Kenny
//
//  Created by ewerson castelo on 12/07/20.
//  Copyright © 2020 ewerson castelo. All rights reserved.
//

import UIKit

extension UIFont {

  class var textStyle: UIFont {
	return UIFont(name: "Salsa-Regular", size: 58.0)!
  }

	
  class var textStyle2: UIFont {
	return UIFont(name: "Salsa-Regular", size: 20.0)!
  }

}

class ViewController: UIViewController {
	
	var score = 0
	
	let shapeLayer : CAShapeLayer = {
		let shape = CAShapeLayer()
		return shape
	}()
	
	// Countdown Label
	let timeLabel : UILabel = {
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
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.textStyle
		label.textColor = UIColor(red: 254.0 / 255.0, green: 223.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
		return label
	}()
	
	// Score Label
	let highScoreLabel : UILabel = {
		let label = UILabel()
		label.text = "highscore: 0"
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.textStyle2
		label.textColor = UIColor(red: 254.0 / 255.0, green: 223.0 / 255.0, blue: 177.0 / 255.0, alpha: 1.0)
		return label
	}()
	
	// ViewContent
	let containerView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let topContainerView: UIView = {
		let view = UIView()
		view.backgroundColor = .systemPink
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let layerShapeContainer: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let containerImageView : UIView = {
		let view = UIView()
		view.backgroundColor = .blue
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let imageView1 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView2 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView3 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView4 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView5 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView6 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = .green
		image.isUserInteractionEnabled = true
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
	
	fileprivate func layoutMain() {
		view.addSubview(containerView)
		containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		containerView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
		containerView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
		containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		
		containerView.addSubview(topContainerView)
		topContainerView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
		topContainerView.leftAnchor.constraint(equalTo: containerView.leftAnchor).isActive = true
		topContainerView.rightAnchor.constraint(equalTo: containerView.rightAnchor).isActive = true
		topContainerView.heightAnchor.constraint(equalToConstant: 237).isActive = true
		
		topContainerView.addSubview(layerShapeContainer)
		layerShapeContainer.widthAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.heightAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.topAnchor.constraint(equalTo: topContainerView.topAnchor, constant: 100).isActive = true
		layerShapeContainer.centerXAnchor.constraint(equalTo: topContainerView.centerXAnchor, constant: 70).isActive = true
		
		layerShapeContainer.layer.addSublayer(shapeLayer)
		layerShapeContainer.addSubview(timeLabel)
		timeLabel.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
		timeLabel.center = layerShapeContainer.center
		
		topContainerView.addSubview(scoreLabel)
		scoreLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
		scoreLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 160).isActive = true
		
		containerView.addSubview(containerImageView)
		containerImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10).isActive = true
		containerImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10).isActive = true
		containerImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 250).isActive = true
		
		containerImageView.addSubview(imageView1)
		containerImageView.addSubview(imageView2)
		containerImageView.addSubview(imageView3)
		containerImageView.addSubview(imageView4)
		containerImageView.addSubview(imageView5)
		containerImageView.addSubview(imageView6)
		imageView1.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView1.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView1.topAnchor.constraint(equalTo: containerImageView.topAnchor, constant: 0).isActive = true
		
		imageView2.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView2.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView2.leftAnchor.constraint(equalTo: imageView1.leftAnchor, constant: 85).isActive = true
		
		imageView3.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView3.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView3.leftAnchor.constraint(equalTo: imageView2.leftAnchor, constant: 85).isActive = true
		
		imageView4.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView4.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView4.topAnchor.constraint(equalTo: imageView1.topAnchor, constant: 115).isActive = true
		
		imageView5.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView5.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView5.topAnchor.constraint(equalTo: imageView2.topAnchor, constant: 115).isActive = true
		imageView5.leftAnchor.constraint(equalTo: imageView4.leftAnchor, constant: 85).isActive = true
		
		imageView6.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView6.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView6.topAnchor.constraint(equalTo: imageView3.topAnchor, constant: 115).isActive = true
		imageView6.leftAnchor.constraint(equalTo: imageView5.leftAnchor, constant: 85).isActive = true
		
		containerView.addSubview(highScoreLabel)
		highScoreLabel.bottomAnchor.constraint(equalTo: containerView.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
		highScoreLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0).isActive = true
	}

	override func viewDidLoad() {
		super.viewDidLoad()
			
		view.backgroundColor = UIColor(white: 35.0 / 255.0, alpha: 1.0)
		
		drawingCircle()
		
		layoutMain()

		scoreLabel.text = "Score: \(score)"
		let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		
		// Add tapped animation in to screen
//		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
		
		// Add tapped images game
		imageView1.addGestureRecognizer(recognizer1)
		imageView2.addGestureRecognizer(recognizer2)
		imageView3.addGestureRecognizer(recognizer3)
		imageView4.addGestureRecognizer(recognizer4)
		imageView5.addGestureRecognizer(recognizer5)
		imageView6.addGestureRecognizer(recognizer6)
	}
	
	@objc func increaseScore(){
		print("tapped increase score")
		score += 1
		scoreLabel.text = "Score: \(score)"
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


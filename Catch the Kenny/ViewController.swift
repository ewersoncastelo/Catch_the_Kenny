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
	
	let layerShapeContainer: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	let imageView1 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView2 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView3 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView4 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView5 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView6 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView7 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView8 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	let imageView9 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
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

		view.addSubview(layerShapeContainer)
		layerShapeContainer.widthAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.heightAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
		layerShapeContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 70).isActive = true
		
		layerShapeContainer.layer.addSublayer(shapeLayer)
		layerShapeContainer.addSubview(timeLabel)
		timeLabel.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
		timeLabel.center = layerShapeContainer.center
		
		view.addSubview(scoreLabel)
		scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		scoreLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
		
		view.addSubview(imageView1)
		view.addSubview(imageView2)
		view.addSubview(imageView3)
		view.addSubview(imageView4)
		view.addSubview(imageView5)
		view.addSubview(imageView6)
		view.addSubview(imageView7)
//		view.addSubview(imageView8)
//		view.addSubview(imageView9)
		imageView1.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView1.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
		imageView1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
		
		imageView2.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView2.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
		imageView2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true

		imageView3.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView3.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
		imageView3.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true

		imageView4.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView4.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView4.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
		imageView4.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 110).isActive = true
		
		imageView5.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView5.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView5.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
		imageView5.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 110).isActive = true

		imageView6.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView6.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView6.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
		imageView6.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 110).isActive = true
		
		imageView7.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView7.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView7.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
		imageView7.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 220).isActive = true

		view.addSubview(highScoreLabel)
		highScoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
		highScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
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
		let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		
		// Add tapped animation in to screen
//		view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
		
		// Add tapped images game
		imageView1.addGestureRecognizer(recognizer1)
		imageView2.addGestureRecognizer(recognizer2)
		imageView3.addGestureRecognizer(recognizer3)
		imageView4.addGestureRecognizer(recognizer4)
		imageView5.addGestureRecognizer(recognizer5)
		imageView6.addGestureRecognizer(recognizer6)
		imageView7.addGestureRecognizer(recognizer7)
		imageView8.addGestureRecognizer(recognizer8)
		imageView9.addGestureRecognizer(recognizer9)
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


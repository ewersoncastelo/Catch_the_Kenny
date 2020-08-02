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
	var timer = Timer()
	var counter = 0
	var imageArray = [UIImageView]()
	var hideTimer = Timer()
	var highScore = 0
	
	let shapeLayer : CAShapeLayer = {
		let shape = CAShapeLayer()
		return shape
	}()
	
	// Countdown Label
	let timeLabel : UILabel = {
		let label = UILabel()
		label.text = "Start"
		label.textColor = UIColor(red: 1.0, green: 118.0 / 255.0, blue: 23.0 / 255.0, alpha: 1.0)
		label.textAlignment = .center
		label.font = UIFont.boldSystemFont(ofSize: 26)
		label.isUserInteractionEnabled = true
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
	
	
	let imageView10 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	
	let imageView11 : UIImageView = {
		let image = UIImageView()
		image.image = UIImage(named: "kenny")
		image.contentMode = .scaleAspectFit
		image.translatesAutoresizingMaskIntoConstraints = false
		image.isUserInteractionEnabled = true
		return image
	}()
	
	
	let imageView12 : UIImageView = {
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
	
	fileprivate func newHighScoreCheck() {
		// Check users HighScore
		let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
		
		if let newScore = storedHighscore as? Int {
			highScore = newScore
			highScoreLabel.text = "highscore: \(highScore)"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
			
		view.backgroundColor = UIColor(white: 35.0 / 255.0, alpha: 1.0)
		
		drawingCircle()
		
		layoutMain()
		
		// Add tapped animation in to screen
		timeLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(startGame)))
		
		newHighScoreCheck()

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
		let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
		
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
		imageView10.addGestureRecognizer(recognizer10)
		imageView11.addGestureRecognizer(recognizer11)
		imageView12.addGestureRecognizer(recognizer12)
		
		imageArray = [imageView1, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9, imageView10, imageView11, imageView12]
		
		hidenImageArray()
		imageArray[2].isHidden = false
	}
	
	fileprivate func hidenImageArray() {
		for image in imageArray {
			image.isHidden = true
		}
	}
	
	@objc func hiddenImage() {
		hidenImageArray()
		
		let random = Int(arc4random_uniform(UInt32(imageArray.count)))
		imageArray[random].isHidden = false
		
	}
	
	fileprivate func disableGestureStart() {
		for gesture in timeLabel.gestureRecognizers! {
			gesture.isEnabled = false
		}
	}
	
	@objc func startGame() {
		
		disableGestureStart()
				
		animatedCircle()
		
		hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hiddenImage), userInfo: nil, repeats: true)
		
		// Timers
		counter = 15
		timeLabel.text = String(counter)
		timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(beginTimeCountDown), userInfo: nil, repeats: true)
	}
	
	@objc func beginTimeCountDown(){
		shapeLayer.strokeEnd = 0
		
		counter -= 1
		
		timeLabel.text = String(counter)
		
		if(counter == 0){
			timer.invalidate()
			hideTimer.invalidate()
			
			// Disable Button
			disableGestureStart()
			
			// Hidden Kenny Images
			hidenImageArray()
			
			// Set HighScore Data
			if self.score > self.highScore {
				self.highScore = self.score
				self.highScoreLabel.text = "highscore: \(self.highScore)"
				UserDefaults.standard.set(self.highScore, forKey: "highscore")
			}
			
			

			let alert = UIAlertController(title: "Time's up", message: "Do you to play again?", preferredStyle: .alert)
			let okButton = UIAlertAction(title: "OK", style: .cancel) { (UIAlertAction) in
				// Stop the game
				self.timeLabel.text = "Start"
				self.score = 0
				self.scoreLabel.text = "Score: \(self.score)"
			}
			let replayButton = UIAlertAction(title: "Replay", style: .default) { (UIAlertAction) in
				//replay function
				self.timeLabel.text = "15"
				self.score = 0
				self.scoreLabel.text = "Score: \(self.score)"
				self.startGame()
			}
			alert.addAction(okButton)
			alert.addAction(replayButton)
			self.present(alert, animated: true, completion: nil)
		}
		
	}
	
	fileprivate func animatedCircle() {
		// catch tapped in to screen and make animation
		let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
		basicAnimation.toValue = 1
		basicAnimation.duration = 15
		basicAnimation.fillMode = .forwards
		basicAnimation.isRemovedOnCompletion = true
		shapeLayer.add(basicAnimation, forKey: "urSoBasic")
	}
	
	@objc func increaseScore(){
		print("tapped increase score")
		score += 1
		scoreLabel.text = "Score: \(score)"
	}

	fileprivate func layoutMain() {

		view.addSubview(layerShapeContainer)
		layerShapeContainer.widthAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.heightAnchor.constraint(equalToConstant: 132).isActive = true
		layerShapeContainer.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
		layerShapeContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 70).isActive = true
		
		layerShapeContainer.layer.addSublayer(shapeLayer)
		layerShapeContainer.addSubview(timeLabel)
		timeLabel.frame = CGRect(x: 0, y: 100, width: 200, height: 100)
		timeLabel.center = layerShapeContainer.center
		
		view.addSubview(scoreLabel)
		scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		scoreLabel.topAnchor.constraint(equalTo: layerShapeContainer.topAnchor, constant: 60).isActive = true
		
		view.addSubview(imageView1)
		view.addSubview(imageView2)
		view.addSubview(imageView3)
		view.addSubview(imageView4)
		view.addSubview(imageView5)
		view.addSubview(imageView6)
		view.addSubview(imageView7)
		view.addSubview(imageView8)
		view.addSubview(imageView9)
		view.addSubview(imageView10)
		view.addSubview(imageView11)
		view.addSubview(imageView12)
		imageView10.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView10.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView10.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
		imageView10.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
		
		imageView11.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView11.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView11.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
		imageView11.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
		
		imageView12.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView12.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView12.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
		imageView12.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
		
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
		
		imageView8.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView8.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView8.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
		imageView8.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 220).isActive = true
		
		imageView9.widthAnchor.constraint(equalToConstant: 82).isActive = true
		imageView9.heightAnchor.constraint(equalToConstant: 110).isActive = true
		imageView9.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100).isActive = true
		imageView9.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 220).isActive = true

		view.addSubview(highScoreLabel)
		highScoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
		highScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
	}

}


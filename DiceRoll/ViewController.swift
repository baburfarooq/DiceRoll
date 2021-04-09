//
//  ViewController.swift
//  DiceRoll
//
//  Created by Babur Farooq on 4/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    var backgroundImage = UIImageView()
    var mainLogo = UIImageView()
    var diceOne  = UIImageView()
    var diceTwo  = UIImageView()
    var rollButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupCostraints()
        
        
        
    }
    
    let diceArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]


    func setupViews() {

            backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "GreenBackground")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            backgroundImage.translatesAutoresizingMaskIntoConstraints = false
            self.view.insertSubview(backgroundImage, at: 0)
        

            mainLogo = UIImageView(frame: UIScreen.main.bounds)
            mainLogo.image = UIImage(named: "DiceeLogo")
            mainLogo.contentMode = UIView.ContentMode.scaleAspectFit
            mainLogo.translatesAutoresizingMaskIntoConstraints = false
            self.view.insertSubview(mainLogo, at: 1)

            diceOne = UIImageView(frame: UIScreen.main.bounds)
            diceOne.image = UIImage(named: "DiceOne")
            diceOne.contentMode = UIView.ContentMode.scaleAspectFit
            diceOne.translatesAutoresizingMaskIntoConstraints = false
            self.view.insertSubview(diceOne, at: 1)

            diceTwo = UIImageView(frame: UIScreen.main.bounds)
            diceTwo.image = UIImage(named: "DiceTwo")
            diceTwo.contentMode = UIView.ContentMode.scaleAspectFit
            diceTwo.translatesAutoresizingMaskIntoConstraints = false
            self.view.insertSubview(diceTwo, at: 1)
        
            rollButton.backgroundColor = UIColor.red
            rollButton.translatesAutoresizingMaskIntoConstraints = false
            rollButton.setTitle("Roll", for: .normal)
            rollButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            view.addSubview(rollButton)
        
    }
    
    func setupCostraints() {
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            mainLogo.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 100),
            mainLogo.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            diceOne.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 300),
            diceOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            diceOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150)
        ])
        
        NSLayoutConstraint.activate([
            diceTwo.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 300),
            diceTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
            diceTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            rollButton.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -200),
            rollButton.centerXAnchor.constraint(equalTo: backgroundImage.centerXAnchor),
            rollButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    
    @objc func buttonPressed() {
        
            diceOne.image = diceArray.randomElement()
            diceTwo.image = diceArray.randomElement()
        
    }
    
    
    
  
}



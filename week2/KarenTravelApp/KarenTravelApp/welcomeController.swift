//
//  ViewController.swift
//  KarenTravelApp
//
//  Created by GUW06 on 2023-05-11.
//


import UIKit

class welcomeController: UIViewController {
    
    @IBOutlet weak var headLabel:UILabel!;
    @IBOutlet weak var secondLabel:UILabel!;
    @IBOutlet weak var signButton:UIButton!;
    @IBOutlet weak var logInButton:UIButton!;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //customizing second label
        secondLabel.textColor = UIColor(red: 0.702, green: 0.71, blue: 0.725, alpha: 1)
        
        //Customizing Log in Button
        logInButton.backgroundColor = UIColor(red: 0.345, green: 0.812, blue: 0.761, alpha: 1)
        logInButton.layer.cornerRadius = 29
        logInButton.layer.shadowColor = UIColor(red: 0.345, green: 0.812, blue: 0.761, alpha: 0.25).cgColor
        logInButton.layer.shadowOpacity = 1
        logInButton.layer.shadowRadius = 8
        logInButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        //customizing sign up button
        signButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        signButton.layer.cornerRadius = 29
        signButton.layer.shadowColor = UIColor(red: 0.439, green: 0.565, blue: 0.69, alpha: 0.2).cgColor
        signButton.layer.shadowOpacity = 1
        signButton.layer.shadowRadius = 8
        signButton.layer.shadowOffset = CGSize(width: 0, height:4)
    }

    

}


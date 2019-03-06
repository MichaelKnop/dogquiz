//
//  ViewController.swift
//  Projectuno
//
//  Created by Knop, Michael P on 2/25/19.
//  Copyright © 2019 Knop, Michael P. All rights reserved.
//

import UIKit

var summer:Int = 0
var winter:Int = 0
var running:Int = 0
var sleep:Int = 0
var slidervalue:Int = 0
var total:Int = 0
var indoors:Int = 0

class ViewController: UIViewController {

    @IBOutlet weak var summerLabel: UIButton!
    @IBOutlet weak var winterLabel: UIButton!
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var totalAnswer: UILabel!
    @IBOutlet weak var totalImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBAction func selectRunning(_ sender: UISwitch) {
        if sender.isOn{
            running = 2
        }
        else {
            running = 1
        }
    }
    @IBAction func selectIndoors(_ sender: UISwitch) {
        if sender.isOn{
            indoors = 1
        }
        else {
            indoors = 2
        }
    }
    @IBAction func buttonSummer(_ sender: UIButton) {
        summer = 2
        winterLabel.isHidden = true
        
        
    }
    
    @IBAction func buttonWinter(_ sender: UIButton) {
        winter = 1
        summerLabel.isHidden = true
        
    }
    @IBAction func sliderPets(_ sender: UISlider) {
        slidervalue = Int(sender.value)
        sleepHours.text = "Around \(slidervalue)"
        if (slidervalue>=0 && slidervalue<4){
            sleep = 1
        }
        else if (slidervalue>=4 && slidervalue<8){
            sleep = 2
        }
        else if (slidervalue>=8 && slidervalue<13) {
            sleep = 3
        }
    }
    @IBAction func submit(_ sender: Any) {
        total = summer + winter + running + sleep + indoors
        if (total >= 0 && total <= 4) {
            totalAnswer.text = "You are a dachshund"
            totalImage.image = UIImage(named: "dachshund")
        }
        else if(total >= 5 && total <= 6){
            totalAnswer.text = "You are a schnauzer"
            totalImage.image = UIImage(named: "schnauzer")
        }
        else if(total >= 7 && total <= 8){
            totalAnswer.text = "You are a labrador"
            totalImage.image = UIImage(named: "labrador")
        }
        else {
            totalAnswer.text = "You are a golden retriever"
            totalImage.image = UIImage(named: "golden")
        }
    nameLabel.text = playerName.text
    }
    @IBOutlet weak var sleepHours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


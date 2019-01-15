//
//  ViewController.swift
//  Geometry
//
//  Created by Chinonso Obidike on 1/14/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shape: String = ""
    @IBOutlet weak var introView: UIView!
    
    @IBOutlet weak var introLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var htTextBx: UITextField!
    @IBOutlet weak var widthTextFld: UITextField!
    
    @IBOutlet weak var circleButton: UIButton!
    
    @IBOutlet weak var rectButton: UIButton!
    
    @IBOutlet weak var triButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func htTextField(_ sender: UITextField) {
        switch shape {
        case "circle":
            circleButtonPressed(circleButton)
        case "triangle":
            triButtonPressed(triButton)
        case "rectangle":
            rectButtonPressed(rectButton)
        default:
            introLabel.text = "Make a choice"
        }
        sender.resignFirstResponder()
    }
    
    @IBAction func widthTextFeild(_ sender: UITextField) {
        switch shape {
        case "circle":
            circleButtonPressed(circleButton)
        case "triangle":
            triButtonPressed(triButton)
        case "rectangle":
            rectButtonPressed(rectButton)
        default:
            introLabel.text = "Make a choice"
        }
        sender.resignFirstResponder()
    }
    
    
    @IBAction func pwrButtonPressed(_ sender: UIButton) {
        introView.isHidden = true
        emojiLabel.isHidden = true
        circleButton.isHidden = false
        triButton.isHidden = false
        rectButton.isHidden = false
        introLabel.font = UIFont.init(name: "Noteworthy", size: 25.0)
        introLabel.text = "Make a choice"
        
    }
    
    @IBAction func circleButtonPressed(_ sender: UIButton) {
        shape = "circle"
        widthTextFld.placeholder = "Enter the radius of the circle"
        widthTextFld.isHidden = false
        htTextBx.isHidden = true
        if let text = widthTextFld.text {
            if let radius = Double(text) {
                let area = Double.pi * radius * radius
            introLabel.text = String(format: "%.4f", area)
            }
        }
        widthTextFld.resignFirstResponder()
        //widthTextFld.text = String(0)
        //htTextBx.text = String(0)
    }
    
    @IBAction func triButtonPressed(_ sender: UIButton) {
        shape = "triangle"
        htTextBx.placeholder = "Enter the height of the triangle"
        widthTextFld.placeholder = "Enter the base of the triangle"
        widthTextFld.isHidden = false
        htTextBx.isHidden = false
        var height: Double = 0.0
        var base: Double = 0.0
        if let text = htTextBx.text {
            if let ht = Double(text) {
             height = ht
            }
        }
        if let text = widthTextFld.text{
            if let bs = Double(text){
                base = bs
            }
        }
        
            let area = 0.5 * base * height
            introLabel.text = String(format: "%.2f", area)
        widthTextFld.resignFirstResponder()
        htTextBx.resignFirstResponder()
        //widthTextFld.text = String(0)
        //htTextBx.text = String(0)
    }
    
    @IBAction func rectButtonPressed(_ sender: UIButton) {
        shape = "rectangle"
        htTextBx.placeholder = "Enter the length of the rectangle"
        widthTextFld.placeholder = "Enter the width of the rectangle"
        widthTextFld.isHidden = false
        htTextBx.isHidden = false
        var length: Double = 0.0
        var width: Double = 0.0
        if let text = htTextBx.text {
            if let lt = Double(text) {
                length = lt
            }
        }
        if let text = widthTextFld.text{
            if let w = Double(text){
                width = w
            }
        }
        
        let area = length * width
        print(area)
        introLabel.text = String(format: "%.2f", area)
        widthTextFld.resignFirstResponder()
        htTextBx.resignFirstResponder()
       // widthTextFld.text = String(0)
       // htTextBx.text = String(0)
       
        
    }
    


}


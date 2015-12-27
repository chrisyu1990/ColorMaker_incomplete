//
//  ViewController.swift
//  ColorMaker
//
//  Created by Jason Schatz on 11/2/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redControl: UISwitch!
    @IBOutlet weak var greenControl: UISwitch!
    @IBOutlet weak var blueControl: UISwitch!

    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        //if self.redControl == nil {
        //    return
        //}
        
        let r: CGFloat = CGFloat(redslider.value)//self.redControl.on ? 1 : 0
        let g: CGFloat = CGFloat(greenSlider.value)//self.greenControl.on ? 1 : 0
        let b: CGFloat = CGFloat(blueSlider.value)//self.blueControl.on ? 1 : 0
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }
}


//
//  ViewController.swift
//  調色大師
//
//  Created by EthanLin on 2018/3/31.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
 
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    var redValue: Float = 0{
        didSet{
            imageView.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1)
        }
    }
    var greenValue: Float = 0{
        didSet{
            imageView.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1)
        }
    }
    var blueValue: Float = 0{
        didSet{
            imageView.backgroundColor = UIColor(red: CGFloat(redValue/255), green: CGFloat(greenValue/255), blue: CGFloat(blueValue/255), alpha: 1)
        }
    }
    
    @IBAction func changeRedValue(_ sender: UISlider) {
        let step:Float = 1
        redValue = roundf(redSlider.value / step) * step
        redLabel.text = "R:\(Int(redValue))"

    }
    
    @IBAction func changeGreenValue(_ sender: UISlider) {
        let step:Float = 1
        greenValue = roundf(greenSlider.value / step) * step
        greenLabel.text = "G:\(Int(greenValue))"

    }
    
    @IBAction func changeBlueValue(_ sender: UISlider) {
        let step:Float = 1
        blueValue = roundf(blueSlider.value / step) * step
        blueLabel.text = "G:\(Int(blueValue))"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        blueSlider.maximumValue = 0
        blueSlider.maximumValue = 255
        imageView.backgroundColor = .black
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


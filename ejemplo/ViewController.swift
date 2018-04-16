//
//  ViewController.swift
//  ejemplo
//
//  Created by Santi on 09/04/2018.
//  Copyright © 2018 Santi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
   
    var time = 0
    var timer = Timer()
    
   
    @IBAction func play(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.startAction), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    
    
    @IBAction func reset(_ sender: UIButton) {
        timer.invalidate()
        time = 0
        label.text = ("0")
    }

    @objc func startAction(){
        time += 1
        label.text = "\(time)"
    }
    @IBAction func suma(_ sender: UIStepper) {
        time = Int(sender.value)
        label.text = "\(time)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}



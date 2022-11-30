//
//  ViewController.swift
//  GestureExperiments
//
//  Created by ITHS on 2022-11-30.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        //print("movin")
        
        let translation = sender.translation(in: self.view)
        
        if let viewToPan = sender.view {
            viewToPan.center = CGPoint(
                x: viewToPan.center.x + translation.x,
                y: viewToPan.center.y + translation.y)
        }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }
    
    @IBAction func catTaped(_ sender: UITapGestureRecognizer) {
        print("Cat tapped")

    }
    
    

}


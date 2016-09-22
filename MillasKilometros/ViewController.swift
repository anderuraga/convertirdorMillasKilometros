//
//  ViewController.swift
//  MillasKilometros
//
//  Created by AnderIpartek on 21/9/16.
//  Copyright © 2016 AnderIpartek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var distanceTextField: UITextField!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var resulLabel: UILabel!
    
    let mileUnit : Double = 1.609
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resulLabel.text = "Escribe la distancia a convertir"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertCliked(_ sender: UIButton) {
        
        let selectedIndex = segmentedControl.selectedSegmentIndex
        print ("seleccionado opcion \(selectedIndex)")
        
        if let textField0 = distanceTextField.text, let textFieldVal = Double(textField0){
            if ( selectedIndex == 0 ){
                print ("convertir a Millas")
                let convertedVal = textFieldVal / mileUnit
                let initValue = String (format: "%.2f", textFieldVal)
                let endValue  = String (format: "%.2f", convertedVal)
                resulLabel.text = "\(initValue) km = \(endValue)"

            }else{
                print ("convertir a Kilometros")
                let convertedVal = textFieldVal * mileUnit
                let initValue = String (format: "%.2f", textFieldVal)
                let endValue  = String (format: "%.2f", convertedVal)
                resulLabel.text = "\(initValue) millas = \(endValue)"
            }
        }else{
            resulLabel.text = "😐 No puedo convertir ese valor 😵"
        }
        
    }
}


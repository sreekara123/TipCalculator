//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sreekara Yachamaneni on 1/13/19.
//  Copyright © 2019 Sreekara Yachamaneni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var calculateLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipControl.setTitle(String(AppDelegate.tipPercentages[0]*100) + "%", forSegmentAt: 0)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tipControl.setTitle(String(Int(AppDelegate.tipPercentages[0]*100)) + "%", forSegmentAt: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tipControl.setTitle(String(Int(AppDelegate.tipPercentages[0]*100)) + "%", forSegmentAt: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func settingsAction(_ sender: Any) {
        
        self.performSegue(withIdentifier: "sreekara", sender: self)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * AppDelegate.tipPercentages[tipControl.selectedSegmentIndex]
        //let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        let currencyCode = locale.currencyCode!
        
        tipField.text = currencySymbol + String(format: "%.2f", tip)
        calculateLabel.text = currencySymbol + String(format: "%.2f", total)
    }
    
    

}


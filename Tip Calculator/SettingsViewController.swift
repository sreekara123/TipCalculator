//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Sreekara Yachamaneni on 1/13/19.
//  Copyright © 2019 Sreekara Yachamaneni. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UITextField!
    
    
    @IBAction func doneButton(_ sender: Any) {
        AppDelegate.tipPercentages[0] = Double(defaultTip.text!)! / 100
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

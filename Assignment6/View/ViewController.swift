//
//  ViewController.swift
//  Assignment6
//
//  Created by Ross Spafford on 2/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var Amount: UITextField!
    
    var currencyLogic = CurrencyLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GBPChanged(_ sender: UISwitch) {
        currencyLogic.setShowGBP(sender.isOn)
    }
    
    @IBAction func CDNChanged(_ sender: UISwitch) {
        currencyLogic.setShowCDN(sender.isOn)
    }
    
    @IBAction func EURChanged(_ sender: UISwitch) {
        currencyLogic.setShowEUR(sender.isOn)
    }
    
    @IBAction func PesoChanged(_ sender: UISwitch) {
        currencyLogic.setShowPeso(sender.isOn)
    }
    
    @IBAction func Convert(_ sender: UIButton) {
        if let inputText = Amount.text, let intValue = Int(inputText) {
            // Use the unwrapped intValue instead of converting Amount.text again
            currencyLogic.setAmount(intValue)
            self.performSegue(withIdentifier: "MainTransition", sender: self)
        } else {
            // Show that the amount value is invalid by turning the text red and not changing the view.
            Amount.textColor = .red
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainTransition" {
            let conversionNavigation = segue.destination as! ConversionViewController
            conversionNavigation.currencyLogic = currencyLogic
        }
    }
}


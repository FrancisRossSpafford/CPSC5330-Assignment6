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
    var amount : String = ""
    
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
        //amount = loanLogic.calculateLoanAmount()
        self.performSegue(withIdentifier: "MainTransition", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainTransition" {
            let loanNavigation = segue.destination as! ConversionViewController
            //loanNavigation.amount = amount
        }
    }
}


//
//  ConversionViewController.swift
//  Assignment6
//
//  Created by Ross Spafford on 2/23/25.
//
import UIKit

class ConversionViewController: UIViewController {
    
    var currencyLogic = CurrencyLogic()
    
    
    

    @IBOutlet weak var AmountLabel: UILabel!
    @IBOutlet weak var GBP1: UILabel!
    @IBOutlet weak var GBP2: UILabel!
    @IBOutlet weak var CDN1: UILabel!
    @IBOutlet weak var CDN2: UILabel!
    @IBOutlet weak var EUR1: UILabel!
    @IBOutlet weak var EUR2: UILabel!
    @IBOutlet weak var PES1: UILabel!
    @IBOutlet weak var PES2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AmountLabel.text = "Amount in USD: \(currencyLogic.Amount)"
        
        //Set converted Amounts.  Round to 2 decimals.
        GBP2.text = "\(String(format: "%.2f",currencyLogic.getAmountInGBP()))"
        CDN2.text = "\(String(format: "%.2f",currencyLogic.getAmountInCDN()))"
        EUR2.text = "\(String(format: "%.2f",currencyLogic.getAmountInEUR()))"
        PES2.text = "\(String(format: "%.2f",currencyLogic.getAmountInPesos()))"
       
        if(!currencyLogic.showGBP){
            GBP1.isHidden = true
            GBP2.isHidden = true
        }
        
        if(!currencyLogic.showCDN){
            CDN1.isHidden = true
            CDN2.isHidden = true
        }
        
        if(!currencyLogic.showEUR){
            EUR1.isHidden = true
            EUR2.isHidden = true
        }
        
        if(!currencyLogic.showPeso){
            PES1.isHidden = true
            PES2.isHidden = true
        }
        
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

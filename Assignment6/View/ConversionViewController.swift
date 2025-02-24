//
//  ConversionViewController.swift
//  Assignment6
//
//  Created by Ross Spafford on 2/23/25.
//
import UIKit

class ConversionViewController: UIViewController {
    
    var amountInUSD : String = ""
    var amountInGBP : String = ""
    var amountInCanadianDollars : String = ""
    var amountInEuros : String = ""
    var amountInPesos : String = ""
    var showGBP : Bool = false
    var showCanadianDollars : Bool = false
    var showEuros : Bool = false
    var showPesos : Bool = false
    
    
    
    @IBOutlet weak var amountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //amountLabel.text = "Amount Per Payment: \(amount)"
        // Do any additional setup after loading the view.
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

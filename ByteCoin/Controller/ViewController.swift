//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,MyPro {
    
    func didget(_ rate: Double) {
        DispatchQueue.main.async {
            self.price.text=String(format: "%.4f",rate)
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
      
        return c.currencyArray[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currency.text=c.currencyArray[row]
        c.fetch(currency.text!)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return c.currencyArray.count
    }
    var c=CoinManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource=self
        picker.delegate=self
        c.delegte=self
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var currency: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
}


//
//  PINVC.swift
//  MobileGrowthMonitor
//
//  Created by Jacqueline on 15.03.17.
//  Copyright © 2017 Jacqueline Franßen. All rights reserved.
//

import UIKit


class PINVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var pinChangeButton: UIButton!
    @IBOutlet weak var pinDeactiveButton: UIButton!
    
    
    var firstNums = ["0","1","2","3" ,"4","5","6","7","8","9"]
    var picker = UIPickerView()
   // let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.plain, target: self, action: "donePicker")

    //MARK: Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        textField.inputView = picker
        picker.accessibilityActivate()
        //picker.accessibilityDecrement()
        
        
    }
    
    //MARK: -IBActions
   
   
    @IBAction func nextViewButtonPressed(_ sender: Any) {
        print("Button pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component:Int)->Int{
    return firstNums.count
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            textField.text = firstNums[row] + " ";
    
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return firstNums[row]
    }
    
    
}



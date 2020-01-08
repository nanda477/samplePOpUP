//
//  PopUpusingViewVC.swift
//  SimplePopUpDemo
//
//  Created by D2V iMac on 08/01/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import UIKit

class PopUpusingViewVC: UIViewController {

    @IBOutlet weak var deviceTF: UITextField!
    @IBOutlet weak var modelTF: UITextField!
    @IBOutlet weak var versionTF: UITextField!
    @IBOutlet weak var resLbl: UILabel!
    @IBOutlet weak var popUpView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popUpAction(_ sender: Any) {
        if popUpView.isHidden == true {
            popUpView.isHidden = false
        }else{
             popUpView.isHidden = true
        }
    }
    @IBAction func nextAction(_ sender: Any) {
        
         popUpView.isHidden = true
        
        resLbl.text = "Device: \(deviceTF.text!)\n" + "Model: \(modelTF.text!)\n" + "Version: \(versionTF.text!)"
    }
    
    @IBAction func closeViewAction(_ sender: Any) {
        
        popUpView.isHidden = true
        resLbl.text = "Device: \(deviceTF.text!)\n" + "Model: \(modelTF.text!)\n" + "Version: \(versionTF.text!)"
        
    }
    
 

}

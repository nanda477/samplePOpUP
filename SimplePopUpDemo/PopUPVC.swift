//
//  PopUPVC.swift
//  SimplePopUpDemo
//
//  Created by D2V iMac on 08/01/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import UIKit

protocol resultValuesDelegate {
    func resultData(device: String, model: String, version: String)
}

class PopUPVC: UIViewController {

    @IBOutlet weak var deviceTF: UITextField!
    @IBOutlet weak var modelTF: UITextField!
    @IBOutlet weak var versionTF: UITextField!
    
    var resDelegate : resultValuesDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func closeAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func nextAction(_ sender: Any) {
        
        resDelegate?.resultData(device: deviceTF.text!, model: modelTF.text!, version: versionTF.text!)
        
    }
    


}

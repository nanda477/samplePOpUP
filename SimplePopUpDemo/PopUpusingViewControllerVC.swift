//
//  PopUpusingViewControllerVC.swift
//  SimplePopUpDemo
//
//  Created by D2V iMac on 08/01/20.
//  Copyright © 2020 D2V iMac. All rights reserved.
//

import UIKit

class PopUpusingViewControllerVC: UIViewController {

    @IBOutlet weak var resLabl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func popUpAction(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PopUPVC_ID") as! PopUPVC
        vc.modalPresentationStyle = .fullScreen
        vc.resDelegate = self
        self.present(vc, animated: true, completion: nil)
    }
    


}

extension PopUpusingViewControllerVC: resultValuesDelegate {
    func resultData(device: String, model: String, version: String) {
        
        resLabl.text = "Device: \(device)\n" + "Model: \(model)\n" + "Version: \(version)"
    }
    
    
}

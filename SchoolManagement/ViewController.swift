//
//  ViewController.swift
//  SchoolManagement
//
//  Created by VD on 11/30/20.
//

import UIKit

class ViewController: UIViewController {

    var arrCredential:[String] = ["C0789935", "C0789954", "C0777715"]
    @IBOutlet weak var btnLogin: UIButton!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = 4
    }
    
    @IBAction func btnLoginAction(_ sender: Any) {
        if arrCredential.contains(textField.text ?? "") {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
            
            vc.studentId = textField.text
            self.navigationController?.pushViewController(vc, animated: true)
            
        }else {
            let alert = UIAlertController(title: "Alert", message: "Credential does not exist.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
       
    }
    
}


//
//  ResetPasswordVC.swift
//  neXjob.in
//
//  Created by Pioneer on 12/12/22.
//

import UIKit
import Alamofire
import SwiftyJSON
class ResetPasswordVC: UIViewController {
    
    
    @IBOutlet weak var txtEnterEmail: UITextField!
    
    
    @IBOutlet weak var btnResetYourPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtEnterEmail.layer.cornerRadius = 10
        txtEnterEmail.layer.borderWidth = 2
        txtEnterEmail.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtEnterEmail.clipsToBounds = true
        txtEnterEmail.layer.shadowRadius = 4.0
        
        txtEnterEmail.layer.masksToBounds = false
        txtEnterEmail.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtEnterEmail.layer.shadowOpacity = 0.5
        txtEnterEmail.layer.shadowRadius = 4.0
        txtEnterEmail.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        btnResetYourPassword.layer.cornerRadius = 25
        
        txtEnterEmail.layer.cornerRadius = 10
        txtEnterEmail.text = "Enter your Email Id"
        txtEnterEmail.textColor = UIColor.lightGray
        
    }
    override func viewWillAppear(_ animated: Bool) {
        txtEnterEmail.text = "   " + (txtEnterEmail.text ?? "   ")
    }
    
    @IBAction func actionBtnResetYourPassword(_ sender: Any) {
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

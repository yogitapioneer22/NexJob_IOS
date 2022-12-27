//
//  SingUpVC.swift
//  neXjob.in
//
//  Created by Pioneer on 10/12/22.
//

import UIKit
import Alamofire
import SwiftyJSON
class SingUpVC: UIViewController {
    
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var btnTick: UIButton!
    @IBOutlet weak var radioBtnFemale: UIButton!
    @IBOutlet weak var radioBtnMale: UIButton!
    @IBOutlet weak var btnTermsAndCondition: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnPrivacyPolicy: NSLayoutConstraint!
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFirstName.layer.cornerRadius = 10
        txtFirstName.layer.borderWidth = 2
        txtFirstName.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtFirstName.clipsToBounds = true
        txtFirstName.layer.shadowRadius = 4.0
        
        txtFirstName.layer.masksToBounds = false
        txtFirstName.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtFirstName.layer.shadowOpacity = 0.5
        txtFirstName.layer.shadowRadius = 4.0
        txtFirstName.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        
        
        
        txtLastName.layer.cornerRadius = 10
        txtLastName.layer.borderWidth = 2
        txtLastName.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtLastName.clipsToBounds = true
        
        txtLastName.layer.masksToBounds = false
        txtLastName.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtLastName.layer.shadowOpacity = 0.5
        txtLastName.layer.shadowRadius = 4.0
        txtLastName.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        
        txtPhoneNumber.layer.cornerRadius = 10
        txtPhoneNumber.layer.borderWidth = 2
        txtPhoneNumber.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtPhoneNumber.clipsToBounds = true
        
        txtPhoneNumber.layer.masksToBounds = false
        txtPhoneNumber.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtPhoneNumber.layer.shadowOpacity = 0.5
        txtPhoneNumber.layer.shadowRadius = 4.0
        txtPhoneNumber.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        
        txtEmail.layer.cornerRadius = 10
        txtEmail.layer.borderWidth = 2
        txtEmail.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtEmail.clipsToBounds = true
        
        txtEmail.layer.masksToBounds = false
        txtEmail.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtEmail.layer.shadowOpacity = 0.5
        txtEmail.layer.shadowRadius = 4.0
        txtEmail.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        
        txtPassword.layer.cornerRadius = 10
        txtPassword.layer.borderWidth = 2
        txtPassword.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtPassword.clipsToBounds = true
        
        txtPassword.layer.masksToBounds = false
        txtPassword.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtPassword.layer.shadowOpacity = 0.5
        txtPassword.layer.shadowRadius = 4.0
        txtPassword.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        
        txtConfirmPassword.layer.cornerRadius = 10
        txtConfirmPassword.layer.borderWidth = 2
        txtConfirmPassword.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtConfirmPassword.clipsToBounds = true
        
        
        txtConfirmPassword.layer.masksToBounds = false
        txtConfirmPassword.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtConfirmPassword.layer.shadowOpacity = 0.5
        txtConfirmPassword.layer.shadowRadius = 4.0
        txtConfirmPassword.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        btnRegister.layer.cornerRadius = 25
        btnRegister.layer.masksToBounds = false
        btnRegister.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        btnRegister.layer.shadowOpacity = 0.5
        btnRegister.layer.shadowRadius = 4.0
        btnRegister.layer.shadowOffset = CGSizeMake(0.0, 1.0)
    }
    
    @IBAction func ActionRadioBtnMale(_ sender: Any) {
    }
    @IBAction func ActionRadioBtnFemale(_ sender: Any) {
    }
    @IBAction func ActionTickBtn(_ sender: Any) {
    }
    @IBAction func ActionPrivacyPolicyBtn(_ sender: Any) {
    }
    @IBAction func ActionBtnTermsAndConditions(_ sender: Any) {
    }
    
    
    
    @IBAction func backButton(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    
    
    @IBAction func ActionRegisterBtn(_ sender: Any) {
        callRegisterApi()
        //        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        //        self.navigationController?.pushViewController(nextVC, animated: false)
    }
    
    
    @IBAction func ActionArlreadyMember(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
    func callRegisterApi(){
        let loginUrl = ApiURL().baseUrl + "userCreateAccount"
        let headers:HTTPHeaders = [
            
        ]
        LoadingOverlay.shared.showOverlay(view: view)
        let parameters = [
            "name" : String(self.txtFirstName.text!),
            "last_name" : String(self.txtLastName.text!),
            "contact" : String(self.txtPhoneNumber.text!),
            "password" : String(self.txtLastName.text!),
            "email": String(self.txtEmail.text!),
        ] as? [String:String]
        
        AF.request(loginUrl, method: .post, parameters: parameters! as Parameters, encoding: URLEncoding.default, headers: headers).responseJSON {
            response in
            LoadingOverlay.shared.hideOverlayView()

            
            print(response)
            switch (response.result) {
                
            case .success(let value):
                print(response)
                
                let statusCode = response.response?.statusCode
                print(statusCode)
                
                let json = JSON(value)
                print(json)
                
                let message = json["message"].string
                let status = json["status"]
                print(status)
                
                if status == 200{
                    
                    let refreshAlert = UIAlertController(title: "", message: "Successfull!", preferredStyle: UIAlertController.Style.alert)
                    
                    refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
                        let nextViewController = self.storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                        self.present(nextViewController, animated:true, completion:nil)
                        
                    }))
                    refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
                        refreshAlert .dismiss(animated: true, completion: nil)
                    }))
                    self.present(refreshAlert, animated: true, completion: nil)
                }else{
                    
                    let refreshAlert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
                    
                    refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
                        refreshAlert .dismiss(animated: true, completion: nil)
                        
                    }))
                    
                    self.present(refreshAlert, animated: true, completion: nil)
                }
                
                
                break
            case .failure:
                print(Error.self)
                let refreshAlert = UIAlertController(title: "", message: "Something went wrong!", preferredStyle: UIAlertController.Style.alert)
                
                refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
                    refreshAlert .dismiss(animated: true, completion: nil)

                    
                }))
                refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
                    refreshAlert .dismiss(animated: true, completion: nil)
                }))
                self.present(refreshAlert, animated: true, completion: nil)
                
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

//
//  LoginVC.swift
//  neXjob.in
//
//  Created by Pioneer on 10/12/22.
//

import UIKit
import Alamofire
import SwiftyJSON
class LoginVC: UIViewController ,CustomAlertDelegate{
 
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnFogotPassword: UIButton!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnViaThumb: UIButton!
    
    @IBOutlet weak var btnLoginWithOTP: UIButton!
    
    @IBOutlet weak var btnCreateAnAccount: UIButton!
    
    var contact = ""
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    override func viewDidLoad() {
        super.viewDidLoad()

        txtEmail.layer.cornerRadius = 10
        txtEmail.layer.borderWidth = 2
        txtEmail.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtEmail.clipsToBounds = true
        txtEmail.layer.shadowRadius = 4.0
        
        txtEmail.layer.masksToBounds = false
        txtEmail.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtEmail.layer.shadowOpacity = 0.5
        txtEmail.layer.shadowRadius = 4.0
        txtEmail.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        txtPassword.layer.cornerRadius = 10
        txtPassword.layer.borderWidth = 2
        txtPassword.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        txtPassword.clipsToBounds = true
        txtPassword.layer.shadowRadius = 4.0
        
        txtPassword.layer.masksToBounds = false
        txtPassword.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        txtPassword.layer.shadowOpacity = 0.5
        txtPassword.layer.shadowRadius = 4.0
        txtPassword.layer.shadowOffset = CGSizeMake(0.0, 1.0)
        
        btnLogin.layer.cornerRadius = 25
        btnViaThumb.layer.cornerRadius = 25
        btnLoginWithOTP.layer.cornerRadius = 25
        btnCreateAnAccount.layer.cornerRadius = 25
      
    }
    @IBAction func forgotPasswordActionBtn(_ sender: Any) {
    let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ResetPasswordVC") as! ResetPasswordVC
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func viaThumbActionBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func loginActionBtn(_ sender: Any) {
        
        callLoginApi()

    }
        @IBAction func createAnAccountActionBtn(_ sender: Any) {
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SingUpVC") as! SingUpVC
                self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func loginWithOTP(_ sender: Any) {
        let customAlert = OtpView()
      
        customAlert.alertTag = 1

        customAlert.delegate = self
        customAlert.show()
    }
    func okButtonPressed(_ alert: OtpView, alertTag: Int) {
        print("go next")
        
        
        callSendOTPApi()

    }
    func callLoginApi(){
        let loginUrl = "https://pioneersmartinnovate.com/nex/api/user-login"
        let headers:HTTPHeaders = [
          
        ]
        LoadingOverlay.shared.showOverlay(view: view)

        let parameters = [
                    "email": String(self.txtEmail.text!),
                    "password": String(self.txtPassword.text!),
                    "device_uniqueid": "sada",
                    "ip": "asfsa"
                ] as? [String:String]

        AF.request(loginUrl, method: .post, parameters: parameters! as Parameters, encoding: URLEncoding.default, headers: headers).responseJSON {
                    response in
            LoadingOverlay.shared.hideOverlayView()

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
                                
                                let refreshAlert = UIAlertController(title: "", message: "Login Successfully!", preferredStyle: UIAlertController.Style.alert)
                                
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
                            self.present(refreshAlert, animated: true, completion: nil)

                            
                        }))
                        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
                        refreshAlert .dismiss(animated: true, completion: nil)
                                                               }))
                        self.present(refreshAlert, animated: true, completion: nil)
                       
                    }
                }
}
    func callSendOTPApi(){
        let otpUrl = ApiURL().baseUrl + "sendOtp"
        let headers:HTTPHeaders = [
          
        ]
        LoadingOverlay.shared.showOverlay(view: view)

        let parameters = [
                    "contact": "8375870999",
                ] as? [String:String]
print(parameters)
        print(otpUrl)
        AF.request(otpUrl, method: .post, parameters: parameters! as Parameters, encoding: URLEncoding.default, headers: headers).responseJSON {
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
                                
                                let refreshAlert = UIAlertController(title: "", message: message, preferredStyle: UIAlertController.Style.alert)
                                
                                refreshAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction!) in
                                    let nextViewController = self.storyBoard.instantiateViewController(withIdentifier: "VerifyOTPVC") as! VerifyOTPVC
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

public class LoadingOverlay{

    var overlayView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    var bgView = UIView()

    class var shared: LoadingOverlay {
        struct Static {
            static let instance: LoadingOverlay = LoadingOverlay()
        }
        return Static.instance
    }

    public func showOverlay(view: UIView) {

        bgView.frame = view.frame
        bgView.backgroundColor = UIColor.gray
        bgView.addSubview(overlayView)
        bgView.autoresizingMask = [.flexibleLeftMargin,.flexibleTopMargin,.flexibleRightMargin,.flexibleBottomMargin,.flexibleHeight, .flexibleWidth]
        overlayView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        overlayView.center = view.center
        overlayView.autoresizingMask = [.flexibleLeftMargin,.flexibleTopMargin,.flexibleRightMargin,.flexibleBottomMargin]
        overlayView.backgroundColor = UIColor.black
        overlayView.clipsToBounds = true
        overlayView.layer.cornerRadius = 10

        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        activityIndicator.style = .whiteLarge
        activityIndicator.center = CGPoint(x: overlayView.bounds.width / 2, y: overlayView.bounds.height / 2)

        overlayView.addSubview(activityIndicator)
        view.addSubview(bgView)
        self.activityIndicator.startAnimating()

    }

    public func hideOverlayView() {
        activityIndicator.stopAnimating()
        bgView.removeFromSuperview()
    }
}

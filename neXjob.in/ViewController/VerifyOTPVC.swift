//
//  VerifyOTPVC.swift
//  neXjob.in
//
//  Created by Brijesh bhardwaj on 15/12/22.
//

import UIKit
import Alamofire
import SwiftyJSON

class VerifyOTPVC: UIViewController {

    @IBOutlet weak var txtOtp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func verifyOtpAction(_ sender: Any) {
        callVerifyOTPApi()
    }
    
    @IBAction func resendAction(_ sender: Any) {
    }
    
    func callVerifyOTPApi(){
 //   https://pioneersmartinnovate.com/nex/api/verifyOtp
        let otpUrl = ApiURL().baseUrl + "verifyOtp"
        let headers:HTTPHeaders = [
          
        ]
        LoadingOverlay.shared.showOverlay(view: view)

        let parameters = [
            "otp": txtOtp.text,
                    "ip":"111111"
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
//                                    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//                                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "VerifyOTPVC") as! VerifyOTPVC
//                                    self.present(nextViewController, animated:true, completion:nil)
                                    refreshAlert .dismiss(animated: true, completion: nil)

                                    
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

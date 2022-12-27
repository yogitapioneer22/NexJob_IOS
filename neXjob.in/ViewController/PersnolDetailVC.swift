//
//  PersnolDetailVC.swift
//  neXjob.in
//
//  Created by Pioneer on 13/12/22.
//

import UIKit
import UIKit
import Alamofire
import SwiftyJSON
class PersnolDetailVC: UIViewController {
    
    
    
    @IBOutlet weak var txtDOB: UITextField!
    @IBOutlet weak var txtHomeTown: UITextField!
    @IBOutlet weak var txtPinCode: UITextField!
    @IBOutlet weak var txtCategory: UITextField!
    @IBOutlet weak var txtAadharNumber: UITextField!
    @IBOutlet weak var txtPanCard: UITextField!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var txtMaritalStatus: UITextField!
    @IBOutlet weak var btnDifferentlyAbleYES: UIButton!
    @IBOutlet weak var btnDifferentlyAbleNO: NSLayoutConstraint!
    @IBOutlet weak var txtEnterFatherName: UITextField!
    @IBOutlet weak var txtContactNumber: UITextField!
    @IBOutlet weak var txtAlternateNumber: UITextField!
    @IBOutlet weak var txtCurrentAddress: UITextField!
    @IBOutlet weak var btnSameAsCurrentAddress: UIButton!
    @IBOutlet weak var txtPermanentAddress: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSave.layer.cornerRadius = 25

            
            txtDOB.layer.cornerRadius = 10
            txtDOB.layer.borderWidth = 2
            txtDOB.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtDOB.clipsToBounds = true
            txtDOB.layer.shadowRadius = 4.0
            
            txtDOB.layer.masksToBounds = false
            txtDOB.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtDOB.layer.shadowOpacity = 0.5
            txtDOB.layer.shadowRadius = 4.0
            txtDOB.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtHomeTown.layer.cornerRadius = 10
            txtHomeTown.layer.borderWidth = 2
            txtHomeTown.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtHomeTown.clipsToBounds = true
            txtHomeTown.layer.shadowRadius = 4.0
            
            txtHomeTown.layer.masksToBounds = false
            txtHomeTown.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtHomeTown.layer.shadowOpacity = 0.5
            txtHomeTown.layer.shadowRadius = 4.0
            txtHomeTown.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            
            txtPinCode.layer.cornerRadius = 10
            txtPinCode.layer.borderWidth = 2
            txtPinCode.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtPinCode.clipsToBounds = true
            txtPinCode.layer.shadowRadius = 4.0
            
            txtPinCode.layer.masksToBounds = false
            txtPinCode.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtPinCode.layer.shadowOpacity = 0.5
            txtPinCode.layer.shadowRadius = 4.0
            txtPinCode.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtCategory.layer.cornerRadius = 10
            txtCategory.layer.borderWidth = 2
            txtCategory.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtCategory.clipsToBounds = true
            txtCategory.layer.shadowRadius = 4.0
            
            txtCategory.layer.masksToBounds = false
            txtCategory.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtCategory.layer.shadowOpacity = 0.5
            txtCategory.layer.shadowRadius = 4.0
            txtCategory.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtAadharNumber.layer.cornerRadius = 10
            txtAadharNumber.layer.borderWidth = 2
            txtAadharNumber.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtAadharNumber.clipsToBounds = true
            txtAadharNumber.layer.shadowRadius = 4.0
            
            txtAadharNumber.layer.masksToBounds = false
            txtAadharNumber.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtAadharNumber.layer.shadowOpacity = 0.5
            txtAadharNumber.layer.shadowRadius = 4.0
            txtAadharNumber.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtPanCard.layer.cornerRadius = 10
            txtPanCard.layer.borderWidth = 2
            txtPanCard.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtPanCard.clipsToBounds = true
            txtPanCard.layer.shadowRadius = 4.0
            
            txtPanCard.layer.masksToBounds = false
            txtPanCard.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtPanCard.layer.shadowOpacity = 0.5
            txtPanCard.layer.shadowRadius = 4.0
            txtPanCard.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtMaritalStatus.layer.cornerRadius = 10
            txtMaritalStatus.layer.borderWidth = 2
            txtMaritalStatus.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtMaritalStatus.clipsToBounds = true
            txtMaritalStatus.layer.shadowRadius = 4.0
            
            txtMaritalStatus.layer.masksToBounds = false
            txtMaritalStatus.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtMaritalStatus.layer.shadowOpacity = 0.5
            txtMaritalStatus.layer.shadowRadius = 4.0
            txtMaritalStatus.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtEnterFatherName.layer.cornerRadius = 10
            txtEnterFatherName.layer.borderWidth = 2
            txtEnterFatherName.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtEnterFatherName.clipsToBounds = true
            txtEnterFatherName.layer.shadowRadius = 4.0
            
            txtEnterFatherName.layer.masksToBounds = false
            txtEnterFatherName.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtEnterFatherName.layer.shadowOpacity = 0.5
            txtEnterFatherName.layer.shadowRadius = 4.0
            txtEnterFatherName.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtContactNumber.layer.cornerRadius = 10
            txtContactNumber.layer.borderWidth = 2
            txtContactNumber.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtContactNumber.clipsToBounds = true
            txtContactNumber.layer.shadowRadius = 4.0
            
            txtContactNumber.layer.masksToBounds = false
            txtContactNumber.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtContactNumber.layer.shadowOpacity = 0.5
            txtContactNumber.layer.shadowRadius = 4.0
            txtContactNumber.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtAlternateNumber.layer.cornerRadius = 10
            txtAlternateNumber.layer.borderWidth = 2
            txtAlternateNumber.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtAlternateNumber.clipsToBounds = true
            txtAlternateNumber.layer.shadowRadius = 4.0
            
            txtAlternateNumber.layer.masksToBounds = false
            txtAlternateNumber.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtAlternateNumber.layer.shadowOpacity = 0.5
            txtAlternateNumber.layer.shadowRadius = 4.0
            txtAlternateNumber.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtCurrentAddress.layer.cornerRadius = 10
            txtCurrentAddress.layer.borderWidth = 2
            txtCurrentAddress.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtCurrentAddress.clipsToBounds = true
            txtCurrentAddress.layer.shadowRadius = 4.0
            
            txtCurrentAddress.layer.masksToBounds = false
            txtCurrentAddress.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtCurrentAddress.layer.shadowOpacity = 0.5
            txtCurrentAddress.layer.shadowRadius = 4.0
            txtCurrentAddress.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
            txtPermanentAddress.layer.cornerRadius = 10
            txtPermanentAddress.layer.borderWidth = 2
            txtPermanentAddress.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            txtPermanentAddress.clipsToBounds = true
            txtPermanentAddress.layer.shadowRadius = 4.0
            
            txtPermanentAddress.layer.masksToBounds = false
            txtPermanentAddress.layer.shadowColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            txtPermanentAddress.layer.shadowOpacity = 0.5
            txtPermanentAddress.layer.shadowRadius = 4.0
            txtPermanentAddress.layer.shadowOffset = CGSizeMake(0.0, 1.0)
            
           callAllInfoAPI()
            
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    @IBAction func actionBtnMale(_ sender: Any) {
    }
    
    
    @IBAction func actionBtnFemale(_ sender: Any) {
    }
    
    
 
    @IBAction func actinBtnDifferentlyAbleYes(_ sender: Any) {
    }
    
    
    @IBAction func actinBtnDifferentlyAbleNO(_ sender: Any) {
    }
    
    
    @IBAction func actionBtnSameAsCurrentAddress(_ sender: Any) {
    }
    
    
    
    
    
    @IBAction func actionBtnSave(_ sender: Any) {
        callAllInfoAPI()
    }
    func callAllInfoAPI(){
        //   https://pioneersmartinnovate.com/nex/api/verifyOtp
               let otpUrl = ApiURL().baseUrl + "userAllInfo"
               let headers:HTTPHeaders = [
                 
               ]
               LoadingOverlay.shared.showOverlay(view: view)

               let parameters = [
                   "token": "$2y$10$n2G28sk9hGSdDQ9BQ5jxguq1s98qgxry/ptx9490Z.444sv/OWHSm",
                           "status":"1"
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
                               let dob = json["personalinfo"]["dob"].string
                               let c_town = json["personalinfo"]["c_town"].string
                               let p_pin = json["personalinfo"]["p_pin"].string
                               let category = json["personalinfo"]["category"].string
                               let aadhar_no = json["personalinfo"]["aadhar_no"].string
                               let pan_number = json["personalinfo"]["pan_number"].string
                               let gender = json["personalinfo"]["gender"].string
                               let marital_status = json["personalinfo"]["marital_status"].string
                               let differently_able = json["personalinfo"]["differently_able"].string
                               let father_name = json["personalinfo"]["father_name"].string
                               let cnt = json["personalinfo"]["cnt"].string
                               let p_address = json["personalinfo"]["p_address"].string
                               let c_address = json["personalinfo"]["c_address"].string
                               let profile_pic = json["personalinfo"]["profile_pic"].string
                               let alt_cnt = json["personalinfo"]["alt_cnt"].string
                             
                               self.txtDOB.text = dob
                               self.txtHomeTown.text = c_town
                               self.txtPinCode.text = p_pin
                               self.txtCategory.text = category
                               self.txtAadharNumber.text = aadhar_no
                               self.txtPanCard.text = pan_number
                               
                               self.txtMaritalStatus.text = marital_status
                               self.txtEnterFatherName.text = father_name
                               self.txtContactNumber.text = cnt
                               self.txtAlternateNumber.text = alt_cnt
                               self.txtCurrentAddress.text = c_address
                               self.txtPermanentAddress.text = p_address
                               
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

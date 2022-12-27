//
//  MenuVC.swift
//  neXjob.in
//
//  Created by Pioneer on 19/12/22.
//

import UIKit
import UIKit
import Alamofire
import SwiftyJSON

class MenuVC: UIViewController , UITableViewDelegate , UITableViewDataSource{
    var menuName = ["Home","My Profile","Saved Jobs","Funnel","Wallet","Settings","LogOut"]
    var menuImg = [UIImage(named: "dashboard-black"), UIImage(named: "myprofile-black"),UIImage(named: "savedjobs-black"),UIImage(named: "funnel-black"),UIImage(named: "wallet-black"),UIImage(named: "settings-black"),UIImage(named: "logout-black")]
    
    
    
    @IBOutlet weak var userProfileImg: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var lblCTC: UILabel!
    @IBOutlet weak var lblDesignation: UILabel!
    
    @IBOutlet weak var lblExperience: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        userProfileImg.layer.cornerRadius = 40
        callAllInfoAPI()
        
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as? MenuCell
        cell?.lblMenuName?.text = menuName[indexPath.row]
        cell?.menuImage?.image = self.menuImg[indexPath.row]
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        } else if indexPath.row == 1{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "EditProfileVC") as! EditProfileVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        else if indexPath.row == 2{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SavedJobsVC") as! SavedJobsVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 3{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "FunnelVC") as! FunnelVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 4{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "WalletVC") as! WalletVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 5{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 6{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
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
                               let email = json["user"]["email"].string
                               let name = json["user"]["name"].string
                               let contact = json["user"]["contact"].int
                               let last_name = json["user"]["last_name"].string
                               let designation = json["professional"]["designation"].string
                               let current_sal = json["professional"]["current_sal"].string
                               let total_exp = json["professional"]["total_exp"].int
                               print(email)
                               let message = json["message"].string
                               let status = json["status"]
                             print(status)
                      
                               self.lblName.text = (name ?? "NA") + " " + (last_name ?? " ")
                               self.lblDesignation.text = designation ?? "NA"
                               self.lblEmail.text = email ?? "NA"
                               self.lblPhone.text = String(contact ?? 0)
                               self.lblExperience.text = String(total_exp ?? 0)
                               self.lblCTC.text = current_sal ?? "NA"
                           
                               
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

//
//  EditProfileVC.swift
//  neXjob.in
//
//  Created by Pioneer on 20/12/22.
//

import UIKit

class EditProfileVC: UIViewController, UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var userProfileImg: UIImageView!
    var cellName = ["Profile Summery","Profile Detail","Skills","Language Know","Employment","Project Details","Educational Details","Certifications","Desier Career Profile","Resume"]
    var editCellName = ["View & Edit Profile Summery","View & Edit Profile Detail","View & Edit Skills","View & Edit Language Know","View & Edit Employment","View & Edit Project Details","View & Edit Educational Details","View & Edit Certifications","View & Edit Desier Career Profile","View & Edit Resume"]
    override func viewDidLoad() {
        super.viewDidLoad()
        userProfileImg.layer.cornerRadius = 40
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return editCellName.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EditProfileCell", for: indexPath) as? EditProfileCell
        cell?.lblCellName?.text = cellName[indexPath.row]
        cell?.lblEditCellName?.text = editCellName[indexPath.row]
        
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SummeryVC") as! SummeryVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        } else if indexPath.row == 1{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "PersnolDetailVC") as! PersnolDetailVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        else if indexPath.row == 2{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SkillsVC") as! SkillsVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 3{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "LanguagesVC") as! LanguagesVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 4{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "EmploymentVC") as! EmploymentVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 5{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ProjectDetailVC") as! ProjectDetailVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 6{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "EducationVC") as! EducationVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        else if indexPath.row == 7{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "CertificationVC") as! CertificationVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
        }
        
        else if indexPath.row == 8{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DesierCareerProfileVC") as! DesierCareerProfileVC
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else if indexPath.row == 9{
            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "UploadResumeVC") as! UploadResumeVC
            self.navigationController?.pushViewController(nextVC, animated: true)
            
            
        }
        
    }
}


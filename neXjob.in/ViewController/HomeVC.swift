//
//  HomeVC.swift
//  neXjob.in
//
//  Created by Pioneer on 20/12/22.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var notification: UIButton!
    
    @IBOutlet weak var btnUserProfile: UIButton!
    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var tableviewHome: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        userProfileImage.layer.cornerRadius = 22.5
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    @IBAction func notificationBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NotificationVC") as! NotificationVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    @IBAction func btnUserProfileAction(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewHome.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell
        return cell!
    }
 

}

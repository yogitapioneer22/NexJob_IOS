//
//  NewVC.swift
//  neXjob.in
//
//  Created by Pioneer on 19/12/22.
//

import UIKit

class NewVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
 
    @IBOutlet weak var hedderView: UIView!
    
    @IBOutlet weak var userProfileImage: UIImageView!
    @IBOutlet weak var tableviewHome: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        userProfileImage.layer.cornerRadius = 22.5
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewHome.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewCell
        return cell!
    }
 

}

//
//  NotificationVC.swift
//  Pods
//
//  Created by Pioneer on 22/12/22.
//

import UIKit

class NotificationVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    numberOfRowsInse
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoticationCell", for: indexPath) as? NoticationCell
       
        
        return cell!
    }

    
}

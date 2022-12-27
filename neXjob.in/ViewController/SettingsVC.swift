//
//  SettingsVC.swift
//  neXjob.in
//
//  Created by Pioneer on 19/12/22.
//

import UIKit

class SettingsVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    var settingsName = ["Account","Bank Details","About Us","Terms & Conditions","Privacy Policy","FAQ","Logout"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)as! SettingsCell
        cell.lblSettingsListName?.text = settingsName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }


}


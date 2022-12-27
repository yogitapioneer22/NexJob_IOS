//
//  SummeryVC.swift
//  neXjob.in
//
//  Created by Pioneer on 13/12/22.
//

import UIKit

class SummeryVC: UIViewController {

    @IBOutlet weak var btnSave: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSave.layer.cornerRadius = 25

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as! MenuVC
            self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @IBAction func actionBtnSave(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

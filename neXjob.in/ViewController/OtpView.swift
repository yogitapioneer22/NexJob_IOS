//
//  OtpView.swift
//  neXjob.in
//
//  Created by Brijesh bhardwaj on 15/12/22.
//

import UIKit

protocol CustomAlertDelegate: AnyObject {
func okButtonPressed(_ alert: OtpView, alertTag: Int)
//func cancelButtonPressed(_ alert: OtpView, alertTag: Int)
}

class OtpView: UIViewController {
    @IBOutlet weak var txtContact: UITextField!
    weak var delegate: CustomAlertDelegate?
    var alertTag = 0
    var contact = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAlert()
    }
    @IBAction func goAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        delegate?.okButtonPressed(self, alertTag: alertTag)

    }
    
    init() {
    super.init(nibName: "OtpView", bundle: Bundle(for: OtpView.self))
    self.modalPresentationStyle = .overCurrentContext
    self.modalTransitionStyle = .crossDissolve
    }
    required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
    }
    func show() {
    if #available(iOS 13, *) {
    UIApplication.shared.windows.first?.rootViewController?.present(self, animated: true, completion: nil)
    } else {
    UIApplication.shared.keyWindow?.rootViewController!.present(self, animated: true, completion: nil)
    }
    }
    func setupAlert() {
   
    }
    

}
extension OtpView: CustomAlertDelegate {
func okButtonPressed(_ alert: OtpView, alertTag: Int) {
if alertTag == 1 {
print("Single button alert: Ok button pressed")
} else {
print("Two button alert: Ok button pressed")
}
}
func cancelButtonPressed(_ alert: OtpView, alertTag: Int) {
print("Cancel button pressed")
}
}

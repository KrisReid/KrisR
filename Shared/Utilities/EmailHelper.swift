//
//  EmailHelper.swift
//  KrisR
//
//  Created by Kris Reid on 18/06/2021.
//

import Foundation
import MessageUI

class EmailHelper: NSObject, MFMailComposeViewControllerDelegate {
    
    public static let shared = EmailHelper()
    
    private override init() {
    }
    
    
    func sendEmail(subject:String, body:String, to:String){
        if !MFMailComposeViewController.canSendMail() {
            print("No mail account found")
            return
        }
        
        let picker = MFMailComposeViewController()
        
        picker.setSubject(subject)
        picker.setMessageBody(body, isHTML: true)
        picker.setToRecipients([to])
        picker.mailComposeDelegate = self
        
        EmailHelper.getRootViewController()?.present(picker, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        EmailHelper.getRootViewController()?.dismiss(animated: true, completion: nil)
    }
    
    static func getRootViewController() -> UIViewController? {
         UIApplication.shared.windows.first?.rootViewController
    }
}

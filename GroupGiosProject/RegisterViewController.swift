//
//  RegisterViewController.swift
//  GroupGiosProject
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{

    
    
    @IBOutlet var UserNameLabel: UILabel!
    @IBOutlet var PasswordLabel: UILabel!
    @IBOutlet var EmailLabel: UILabel!
    @IBOutlet var PhoneLabel: UILabel!
    
    
    @IBOutlet var segmentCon: UISegmentedControl!
    @IBOutlet var UserNameTF: UITextField!
    @IBOutlet var PasswordTF: UITextField!
    @IBOutlet var EmailTF: UITextField!
    @IBOutlet var PhoneTF: UITextField!
    
    
    @IBOutlet var RegisterButton: UIButton!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        segmentCon.isHidden = false
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewtapped))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    
    
    @objc func viewtapped()
    {
        UserNameTF.resignFirstResponder()
        PasswordTF.resignFirstResponder()
        EmailTF.resignFirstResponder()
        PhoneTF.resignFirstResponder()
    }
    
    
    
    @IBAction func SegmentControl(_ sender: UISegmentedControl)
    {
        let value = sender.selectedSegmentIndex
        if value == 0
        {
            
            UserNameLabel.isHidden = false
            UserNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = true
            EmailTF.isHidden = true
            PhoneTF.isHidden = true
            PhoneLabel.isHidden = true
            RegisterButton.setTitle("SignIn", for: .normal)
            
            
            
            
            
            
        
        }
        else
        {
           
            UserNameLabel.isHidden = false
            UserNameTF.isHidden = false
            PasswordLabel.isHidden = false
            PasswordTF.isHidden = false
            RegisterButton.isHidden = false
            EmailLabel.isHidden = false
            EmailTF.isHidden = false
            PhoneTF.isHidden = false
            PhoneLabel.isHidden = false
            RegisterButton.setTitle("Register", for: .normal)
        }
    }
    
    @IBAction func Register(_ sender: UIButton)
    {
        let username = UserNameTF.text
        let password = PasswordTF.text
        let email = EmailTF.text
        let phone = PhoneTF.text
        
        let user = Users(userName: username!, Password: password!, Email: email!, Phone: phone!)
        users.append(user)
        UserNameTF.text = nil
        PasswordTF.text = nil
        EmailTF.text = nil
        PhoneTF.text = nil
    }
    
//    @IBAction func Display(_ sender: Any)
//    {
//        for item in users
//        {
//            print(item)
//        }
//    }
    
    
    
    
    /*
     @IBAction func SegmentControl(_ sender: UISegmentedControl) {
     }
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

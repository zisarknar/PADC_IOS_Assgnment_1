//
//  ViewController.swift
//  LoginApp-Day-2
//
//  Created by Sargon Zi on 10/21/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfUsername: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var btnForgetPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.addTarget(self, action: #selector(onClickLogin), for: .touchUpInside)
        
    }
    
    @objc func onClickLogin() {
        let username  = tfUsername.text!
        let password = tfPassword.text!
        
        print("\(username) and \(password)")
        
        if username.elementsEqual("admin") && password.elementsEqual("123") {
            
            //            fist method
            //            performSegue(withIdentifier: Constants.SegueId.LOGIN_SEGUE , sender: username)
            
            //            second method
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            let vc = navigationController.viewControllers[0] as! SecondViewController
            vc.username = username
            self.present(navigationController, animated: true, completion: nil)
            
        } else {
            
            
        }
        
    }
    
    //    send data to next viewController
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == Constants.SegueId.LOGIN_SEGUE {
    //            let vc = segue.destination as! SecondViewController
    //            vc.username  = sender as? String
    //        }
    //    }
    
    @IBAction func onClickRegister(_ sender: UIButton) {
       let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        _ = navigationController.viewControllers[0] as! RegisterViewController
        self.present(navigationController, animated: true, completion: nil)
        
    }
}


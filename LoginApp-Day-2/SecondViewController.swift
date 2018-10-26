//
//  SecondViewController.swift
//  LoginApp-Day-2
//
//  Created by Sargon Zi on 10/21/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblUsername: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblUsername.text = username
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}

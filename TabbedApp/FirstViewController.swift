//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by Raja on 10/31/16.
//  Copyright © 2016 us.banga.TabbedApp. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var UserId: UITextField!
    @IBOutlet weak var UserPassword: UITextField!

    @IBAction func ViewID(_ sender: Any) {

        if UserId.text != "" && UserPassword.text != "" {
            self.performSegue(withIdentifier: "IDCardViewSegue", sender: self)
        }
        else
        {
            Error.text = "Enter UserId and Password->"
        }
    }
    @IBOutlet weak var Error: UILabel!
}


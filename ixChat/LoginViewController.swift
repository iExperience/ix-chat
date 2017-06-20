//
//  ViewController.swift
//  ixChat
//
//  Created by Miki von Ketelhodt on 2017/06/20.
//  Copyright © 2017 RBG Applications. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        Auth.auth().signInAnonymously(completion: { (user, error) in
            if let err = error {
                print(err.localizedDescription)
                return
            }
            
            let channelsNavigationController = self.storyboard?.instantiateViewController(withIdentifier: "channelsNavigationController")
            self.present(channelsNavigationController!, animated: true, completion: nil)
        })
    }

}


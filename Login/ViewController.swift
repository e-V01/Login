//
//  ViewController.swift
//  Login
//
//  Created by Y K on 19.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNametxtfield: UITextField!

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userNametxtfield.text
        }
        
    }

    @IBAction func forgotUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Username", sender: forgotUserNameTapped.self)
    }
    
    
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "Forgot Password", sender: forgotPasswordTapped.self)
    }
}


//
//  RegistrazioneViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 19/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class RegistrazioneViewController: UIViewController {

    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var cognomeTextField: UITextField!
    @IBOutlet weak var partitaIvaTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextFIeld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.hideKeyboardWhenTappedAround()
    }
    

    @IBAction func RegistrazionePressed(_ sender: UIButton) {
    }
    
}

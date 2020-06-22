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
        if(nomeTextField.text == "" || cognomeTextField.text == "" || partitaIvaTextField.text == ""
            || emailTextField.text == "" || passwordTextFIeld.text == ""){
//            qui va inserito il banner con scritto di compilare tutti i campi
        } else{
//            qui va inserito il banner con la registrazione effettuata
            self.dismiss(animated: true, completion: {
                self.presentingViewController?.dismiss(animated: true, completion: nil)
            })
        }
    }
    
}

//
//  AggiungiNegozioViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 22/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit
protocol AggiungiNegozioViewControllerDelegate: NSObjectProtocol {
    func doSomething(data:String)
}

class AggiungiNegozioViewController: UIViewController {

    weak var delegate: AggiungiNegozioViewControllerDelegate?
    @IBOutlet weak var nomeNegozioTextField: UITextField!
    @IBOutlet weak var categoriaNegozioTextField: UITextField!
    @IBOutlet weak var cittaTextField: UITextField!
    @IBOutlet weak var indirizzoTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePressed(_ sender: UIBarButtonItem) {
        
    }
    
}

//
//  ProfiloViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 22/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class ProfiloViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutPressed(_ sender: UIButton) {
        UserDefaults.standard.set(-1, forKey: "UID")
    }

}

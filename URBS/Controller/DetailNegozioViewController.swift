//
//  DetailNegozioViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 07/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class DetailNegozioViewController: UIViewController {

    @IBOutlet weak var logoNegozio: UIImageView!
    @IBOutlet weak var labelNomeNegozio: UILabel!
    @IBOutlet weak var labelIndirizzoNegozio: UILabel!
    
    var negozio: Negozio?
    var prodottiInNegozio = [ProdottoInNegozio]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNomeNegozio.text = negozio?.getNome()
        labelIndirizzoNegozio.text = (negozio?.getIndirizzo())! + ", " + (negozio?.getCitta())!
        logoNegozio.image = UIImage(named: (negozio?.getLogo())!)
        
        logoNegozio.layer.cornerRadius = logoNegozio.frame.size.height/2;
        logoNegozio.layer.masksToBounds = true;
        logoNegozio.layer.borderWidth = 0;
        labelNomeNegozio.adjustsFontSizeToFitWidth = true
        labelNomeNegozio.minimumScaleFactor = 0.1
        
        labelIndirizzoNegozio.adjustsFontSizeToFitWidth = true
        labelIndirizzoNegozio.minimumScaleFactor = 0.1
    }
}

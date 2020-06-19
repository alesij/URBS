//
//  BarcodeDiProdotto.swift
//  URBS
//
//  Created by Andrea Capone on 23/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

class BarcodeProdotto: Codable{
    private var codBarcode:Int
    private var codProdotto:Int
    
    
    init(_ dictionary: [String: Any]) {
        self.codBarcode = dictionary["codBarcode"] as? Int ?? 0
        self.codProdotto = dictionary["codProdotto"] as? Int ?? 0
    }
    
    /* setter */
    public func setCodBarcode(codBarcode:Int){
        self.codBarcode = codBarcode
    }
    
    public func setCodProdotto(codProdotto:Int){
        self.codProdotto = codProdotto
    }
    
    
    /* getter */
    
    public func getCodBarcode() -> Int{
        self.codBarcode
    }
    
    public func getCodProdotto() -> Int{
        self.codProdotto
    }
}




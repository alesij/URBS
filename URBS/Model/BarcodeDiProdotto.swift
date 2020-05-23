//
//  BarcodeDiProdotto.swift
//  URBS
//
//  Created by Andrea Capone on 23/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

class BarcodeProdotto{
    private var codBarcode:Int
    private var codProdotto:Int
    
    
    init(codB:Int, codP:Int){
        self.codBarcode = codB
        self.codProdotto = codP
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




//
//  CategoriaProdotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class CategoriaDiProdotto: Codable{ // coppie codiceNegozio - codiceCategoria
    
    private var codiceProdotto:Int
    private var codiceCategoria:Int
    
    init(codP:Int, codC:Int){
        self.codiceProdotto = codP
        self.codiceCategoria = codC
    }
    
    /* setter */
    public func setCodiceProdotto(codProdotto:Int){
        self.codiceProdotto = codProdotto
    }
    
    public func setCodiceCategoria(codCategoria:Int){
        self.codiceCategoria = codCategoria
    }
    
    /* getter */
    public func getCodiceProdotto() -> Int{
        self.codiceProdotto
    }
    
    public func getCodiceCategoria() -> Int{
        self.codiceCategoria
    }
}

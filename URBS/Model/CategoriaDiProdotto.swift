//
//  CategoriaProdotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class CategoriaDiProdotto{ // coppie codiceNegozio - codiceCategoria
    
    private var codiceProdotto:String
    private var codiceCategoria:String
    
    init(codP:String, codC:String){
        self.codiceProdotto = codP
        self.codiceCategoria = codC
    }
    
    /* setter */
    public func setCodiceProdotto(codProdotto:String){
        self.codiceProdotto = codProdotto
    }
    
    public func setCodiceCategoria(codCategoria:String){
        self.codiceCategoria = codCategoria
    }
    
    /* getter */
    public func getCodiceProdotto() -> String{
        self.codiceProdotto
    }
    
    public func getCodiceCategoria() -> String{
        self.codiceCategoria
    }
}

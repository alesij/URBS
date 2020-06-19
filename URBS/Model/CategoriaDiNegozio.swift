//
//  CategoriaProdotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class CategoriaDiNegozio: Codable{ // coppie codiceNegozio - codiceCategoria
    
    private var codiceNegozio:Int
    private var codiceCategoria:Int
    
    init(_ dictionary: [String: Any]) {
        self.codiceNegozio = dictionary["codiceNegozio"] as? Int ?? 0
        self.codiceCategoria = dictionary["codiceCategoria"] as? Int ?? 0
    }
    
    /* setter */
    public func setCodiceNegozio(codNegozio:Int){
        self.codiceNegozio  = codNegozio
    }
    
    public func setCodiceCategoria(codCategoria:Int){
        self.codiceCategoria = codCategoria
    }
    
    /* getter */
    public func getCodiceNegozio() -> Int{
        self.codiceNegozio
    }
    
    public func getCodiceCategoria() -> Int{
        self.codiceCategoria
    }
}

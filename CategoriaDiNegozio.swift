//
//  CategoriaNegozio.swift
//  URBS2
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class CategoriaDiNegozio{ // coppie codiceNegozio - codiceCategoria
    
    private var codiceNegozio:String
    private var codiceCategoria:String
    
    init(codNegozio:String, codCategoria:String){
        self.codiceNegozio = codNegozio
        self.codiceCategoria = codCategoria
    }
    
    /* setter */
    public func setCodiceNegozio(codNegozio:String){
        self.codiceNegozio = codNegozio
    }
    
    public func setCodiceCategoria(codCategoria:String){
        self.codiceCategoria = codCategoria
    }
    
    /* getter */
    public func getCodiceNegozio() -> String{
        self.codiceNegozio
    }
    
    public func getCodiceCategoria() -> String{
        self.codiceCategoria
    }
    
}

//
//  CategoriaProdotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

class CategoriaProdotto{ // Tutte le categorie possibili
    var codiceCategoria:String
    var nome:String
    
    init(Cod:String, nome:String){
        self.codiceCategoria = Cod
        self.nome = nome
    }
    
    /* setter */
    public func setCodiceCategoria(codCategoria:String){
        self.codiceCategoria = codCategoria
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    /* getter */
    public func getCodiceCategoria() -> String{
        self.codiceCategoria
    }
    
    public func getNome() -> String{
        self.nome
    }
    
}

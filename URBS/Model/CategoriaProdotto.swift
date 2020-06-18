//
//  CategoriaProdotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

class CategoriaProdotto: Codable{ // Tutte le categorie possibili
    var codiceCategoria:Int
    var nome:String
    
    init(Cod:Int, nome:String){
        self.codiceCategoria = Cod
        self.nome = nome
    }
    
    /* setter */
    public func setCodiceCategoria(codCategoria:Int){
        self.codiceCategoria = codCategoria
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    /* getter */
    public func getCodiceCategoria() -> Int{
        self.codiceCategoria
    }
    
    public func getNome() -> String{
        self.nome
    }
    
}

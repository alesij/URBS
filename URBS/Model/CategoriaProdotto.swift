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
    var nomeProdotto:String
    
    init(_ dictionary: [String: Any]) {
        self.codiceCategoria = dictionary["codiceCategoria"] as? Int ?? 0
        self.nomeProdotto = dictionary["nomeProdotto"] as? String ?? ""
    }
    
    /* setter */
    public func setCodiceCategoria(codCategoria:Int){
        self.codiceCategoria = codCategoria
    }
    
    public func setNomeProdotto(nome:String){
        self.nomeProdotto = nome
    }
    
    /* getter */
    public func getCodiceCategoria() -> Int{
        self.codiceCategoria
    }
    
    public func getNomeProdotto() -> String{
        self.nomeProdotto
    }
    
}

//
//  CategoriaNegozio.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class CategoriaNegozio: Codable{ // Tutte le categorie possibili
    private var codiceCategoria:Int
    private var nomeCategoria:String
    
    init(Cod:Int, nome:String){
        self.codiceCategoria = Cod
        self.nomeCategoria = nome
    }
    
    /* setter */
    public func setCodiceCategoria(codCategoria:Int){
        self.codiceCategoria = codCategoria
    }
    
    public func setNome(nome:String){
        self.nomeCategoria = nome
    }
    
    /* getter */
    public func getCodiceCategoria() -> Int{
        self.codiceCategoria
    }
    
    public func getNome() -> String{
        self.nome
    }
}

//
//  Prodotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

public class Prodotto {
    private var codiceProdotto:Int
    private var nome:String

    
    init(codP:Int, nome:String){
        self.codiceProdotto = codP
        self.nome = nome
    }
    
    /*setter*/
    public func setCodiceProdotto(codice:Int){
        self.codiceProdotto = codice
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    
    /* getter */
    public func getCodiceProdotto() -> Int{
        self.codiceProdotto
    }
    
    public func getNome() -> String{
        self.nome
    }
}

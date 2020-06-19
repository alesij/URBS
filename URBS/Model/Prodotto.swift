//
//  Prodotto.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

public class Prodotto: Codable {
    private var codiceProdotto:Int
    private var nome:String
    
    
    init(_ dictionary: [String: Any]) {
        self.codiceProdotto = dictionary["codiceProdotto"] as? Int ?? 0
        self.nome = dictionary["nome"] as? String ?? ""
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

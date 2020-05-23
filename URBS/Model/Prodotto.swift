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
    private var descrizione:String
    private var immagine:String?
    
    init(codP:Int, nome:String, descrizione:String, immagine:String){
        self.codiceProdotto = codP
        self.nome = nome
        self.descrizione = descrizione
        self.immagine = immagine
    }
    
    /*setter*/
    public func setCodiceProdotto(codice:Int){
        self.codiceProdotto = codice
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setDescrizione(descrizione:String){
        self.descrizione = descrizione
    }
    
    public func setImmagine(immagine:String){
        self.immagine = immagine
    }
    
    /* getter */
    public func getCodiceProdotto() -> Int{
        self.codiceProdotto
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getDescrizione() -> String{
        self.descrizione
    }
    
    public func getImmagine() -> String?{
        self.immagine
    }
    
    
}

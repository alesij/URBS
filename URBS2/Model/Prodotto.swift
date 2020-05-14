//
//  Prodotto.swift
//  URBS2
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

public class Prodotto {
    private var codiceProdotto:String
    private var nome:String
    private var descrizione:String
    private var immagine:UIImage?
    
    init(codP:String, nome:String, descrizione:String, immagine:UIImage){
        self.codiceProdotto = codP
        self.nome = nome
        self.descrizione = descrizione
        self.immagine = immagine
    }
    
    /*setter*/
    public func setCodiceProdotto(codice:String){
        self.codiceProdotto = codice
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setDescrizione(descrizione:String){
        self.descrizione = descrizione
    }
    
    public func setImmagine(immagine:UIImage){
        self.immagine = immagine
    }
    
    /* getter */
    public func getCodiceProdotto() -> String{
        self.codiceProdotto
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getDescrizione() -> String{
        self.descrizione
    }
    
    public func getImmagine() -> UIImage?{
        self.immagine
    }
    
    
}

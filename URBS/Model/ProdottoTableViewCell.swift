//
//  ProdottoTableViewDetail.swift
//  URBS
//
//  Created by Alessio Di Matteo on 09/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

class ProdottoTableViewCell: Codable{
    private var nome:String
    private var codiceProdotto:Int
    private var codiceNegozio:Int
    private var availability:Bool
    private var prezzo:Double
    private var quantity:Int
    private var descrizione:String
    private var immagine:String
    
    init(codProdotto:Int, codNegozio:Int, disp:Bool, prezzo:Double, quantita:Int, nome:String, immagine: String, descrizione: String){
        self.codiceProdotto = codProdotto
        self.codiceNegozio = codNegozio
        self.availability = disp
        self.prezzo = prezzo
        self.quantity = quantita
        self.nome = nome
        self.immagine = immagine
        self.descrizione = descrizione
    }
    
    /*setter*/
    public func setCodiceProdotto(codProdotto:Int){
        self.codiceProdotto = codProdotto
    }
    
    public func setCodiceNegozio(codNegozio:Int){
        self.codiceNegozio = codNegozio
    }
    
    public func setAvailability(disp:Bool){
        self.availability = disp
    }
    
    public func setPrezzo(prezzo:Double){
        self.prezzo = prezzo
    }
    
    public func setQuantity(quantita:Int){
        self.quantity = quantita
    }
    
    public func setDescrizione(descrizione:String){
        self.descrizione = descrizione
    }
    
    public func setImmagine(immagine:String){
        self.immagine = immagine
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    
    /*getter*/

    public func getCodiceProdotto() -> Int{
        self.codiceProdotto
    }
    
    public func getCodiceNegozio() -> Int{
        self.codiceNegozio
    }
    
    public func getAvailability() -> Bool{
        self.availability
    }
    
    public func getPrezzo() -> Double{
        self.prezzo
    }
    
    public func getQuantity() -> Int{
        self.quantity
    }
    
    public func getDescrizione() -> String{
        self.descrizione
    }
    
    public func getImmagine() -> String{
        self.immagine
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    
}

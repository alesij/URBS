//
//  ProdottoInNegozio.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public class ProdottoInNegozio{
    private var codiceProdotto:String
    private var codiceNegozio:String
    private var availability:Bool
    private var prezzo:Double
    private var quantity:Int
    
    init(codProdotto:String, codNegozio:String, disp:Bool, prezzo:Double, quantita:Int){
        
        self.codiceProdotto = codProdotto
        self.codiceNegozio = codNegozio
        self.availability = disp
        self.prezzo = prezzo
        self.quantity = quantita
    }

    /*setter*/
    public func setCodiceProdotto(codProdotto:String){
        self.codiceProdotto = codProdotto
    }
    
    public func setCodiceNegozio(codNegozio:String){
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
    
    
    /*getter*/
    public func getCodiceProdotto() -> String{
        self.codiceProdotto
    }
    
    public func getCodiceNegozio() -> String{
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
    
}


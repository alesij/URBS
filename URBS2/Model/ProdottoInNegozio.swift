//
//  ProdottoInNegozio.swift
//  URBS2
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation

public enum Disponibile: Int {
    case falso
    case vero
}

public class ProdottoInNegozio{
    private var codiceProdotto:String
    private var codiceNegozio:String
    private var disponibilita:Disponibile
    private var prezzo:Double
    private var quantita:Int
    
    init(codProdotto:String, codNegozio:String, disp:Disponibile, prezzo:Double, quantita:Int){
        
        self.codiceProdotto = codProdotto
        self.codiceNegozio = codNegozio
        self.disponibilita = disp
        self.prezzo = prezzo
        self.quantita = quantita
    }
    
    /*setter*/
    public func setCodiceProdotto(codProdotto:String){
        self.codiceProdotto = codProdotto
    }
    
    public func setCodiceNegozio(codNegozio:String){
        self.codiceNegozio = codNegozio
    }
    
    public func setDisponibilita(disp:Disponibile){
        self.disponibilita = disp
    }
    
    public func setPrezzo(prezzo:Double){
        self.prezzo = prezzo
    }
    
    public func setQuantita(quantita:Int){
        self.quantita = quantita
    }
    
    
    /*getter*/
    public func getCodiceProdotto() -> String{
        self.codiceProdotto
    }
    
    public func getCodiceNegozio() -> String{
        self.codiceNegozio
    }
    
    public func getDisponibilita() -> Disponibile{
        self.disponibilita
    }
    
    public func getPrezzo() -> Double{
        self.prezzo
    }
    
    public func getQuantita() -> Int{
        self.quantita
    }
    
}

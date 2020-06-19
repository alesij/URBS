//
//  Negozio.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit
import CloudKit

public class Negozio: Codable{
    private var codiceNegozio:Int?
    private var nome:String
    private var city:String
    private var indirizzo:String
    private var logo:String
    private var codiceUtente:Int
    
    init(cod:Int,nome:String, citta:String, indirizzo:String, logo:String, utente:Int){
        self.codiceNegozio = cod
        self.nome = nome
        self.city = citta
        self.indirizzo = indirizzo
        self.logo = logo
        self.codiceUtente = utente
    }
    
    
    /*setter*/
    public func setCodNegozio(codice:Int){
        self.codiceNegozio = codice
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setCitta(citta:String){
        self.city = citta
    }
    
    public func setIndirizzo(indirizzo:String){
        self.indirizzo = indirizzo
    }
    
    public func setLogo(logo:String){
        self.logo = logo
    }
    
    public func setProprietario(codUtente:Int){
        self.codiceUtente = codUtente
    }
    
    /* getter */
    public func getCodNegozio() -> Int?{
        self.codiceNegozio
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getCitta() -> String{
        self.city
    }
    
    public func getIndirizzo() -> String{
        self.indirizzo
    }
    
    public func getLogo() -> String?{
        self.logo
    }
    
    public func getCodUtente() -> Int{
        self.codiceUtente
    }
    
}

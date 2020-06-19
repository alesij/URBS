
//
//  Utente.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import CloudKit

public class Utente: Codable {
    private var codiceUtente:Int? // sessione.
    private var email:String
    private var pass:String
    private var tipologia:String
    private var nome:String
    private var cognome:String
    private var partitaIVA:String
    
    init(nome:String, cognome:String, partitaIva:String){
        self.nome = nome
        self.cognome = cognome
        self.partitaIVA = partitaIva
        self.tipologia = "venditore"
        self.email = ""
        self.pass = ""
    }
    
    /*setter*/
    public func setCodiceUtente(codice:Int){
        self.codiceUtente = codice
    }
    
    public func setEmail(email:String){
        self.email = email
    }
    
    public func setPassword(password:String){
        self.pass = password
    }
    
    public func setTipologia(tipologia:String){
        self.tipologia = tipologia
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setCognome(cognome:String){
        self.cognome = cognome
    }
    
    public func setPartitaIva(partitaIva:String){
        self.partitaIVA = partitaIva
    }
    
    /*getter*/
    public func getCodiceUtente() -> Int?{
        self.codiceUtente
    }
    
    public func getEmail() -> String?{
        self.email
    }
    
    public func getPassword() -> String?{
        self.pass
    }
    
    public func getTipologia() -> String{
        self.tipologia
    }
    
    public func getCognome() -> String{
        self.cognome
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getPartitaIva() -> String{
        self.partitaIVA
    }
}


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
    
    init(_ dictionary: [String: Any]) {
        self.codiceUtente = dictionary["codiceUtente"] as? Int ?? 0
        self.email = dictionary["email"] as? String ?? ""
        self.pass = dictionary["pass"] as? String ?? ""
        self.tipologia = dictionary["tipologia"] as? String ?? ""
        self.nome = dictionary["nome"] as? String ?? ""
        self.cognome = dictionary["cognome"] as? String ?? ""
        self.partitaIVA = dictionary["partitaIVA"] as? String ?? ""
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

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

public class Negozio{
    private var codNegozio:String?
    private var nome:String
    private var citta:String
    private var indirizzo:String // foss location in cloudkit. per mo ho lasciato stringa po verimm
    private var logo:String? // non so se uiimage è asset in cloudkit s'adda verè
    private var codProprietario:String?
    
    init(nome:String, citta:String, indirizzo:String, logo:String){
        self.codNegozio = nil
        self.nome = nome
        self.citta = citta
        self.indirizzo = indirizzo
        self.logo = logo
        self.codProprietario = nil
    }
    
    
    /*setter*/
    public func setCodNegozio(codice:String){
        self.codNegozio = codice
    }
    
    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setCitta(citta:String){
        self.citta = citta
    }
    
    public func setIndirizzo(indirizzo:String){
        self.indirizzo = indirizzo
    }
    
    public func setLogo(logo:String){
        self.logo = logo
    }
    
    public func setProprietario(codProprietario:String){
        self.codProprietario = codProprietario
    }
    
    /* getter */
    public func getNegozio() -> String?{
        self.codNegozio
    }
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getCitta() -> String{
        self.citta
    }
    
    public func getIndirizzo() -> String{
        self.indirizzo
    }
    
    public func getLogo() -> String?{
        self.logo
    }
    
    public func getCodProprietario() -> String?{
        self.codProprietario
    }
    
}

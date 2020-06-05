//
//  Profilo.swift
//  URBS
//
//  Created by Gianluca De Lucia on 05/06/2020.
//  Copyright © 2020 Gianluca De Lucia. All rights reserved.
//


import Foundation
import UIKit

public class Profilo {
    private var nome:String
    private var cognome:String
    private var pIva:String

    
    init( nomeNew:String, cognomeNew:String, pIvaNew:String){
        
        self.nome = nomeNew
        self.cognome = cognomeNew
        self.pIva = pIvaNew
    }
    
    
    /*setter*/

    public func setNome(nome:String){
        self.nome = nome
    }
    
    public func setCognome(cogn:String){
        self.cognome = cogn
    }
    
    public func setPiva(piv:String){
        self.pIva = piv
    }
    
    
    /* getter */
    
    public func getNome() -> String{
        self.nome
    }
    
    public func getCognome() -> String{
        self.cognome
    }
    
    public func getPiva() -> String{
        self.pIva
    }
}


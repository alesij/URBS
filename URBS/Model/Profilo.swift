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
    private var cf:String
    private var residenza:String
    
    init( nomeNew:String, cognomeNew:String, pIvaNew:String, codF:String, res:String){
        
        self.nome = nomeNew
        self.cognome = cognomeNew
        self.pIva = pIvaNew
        self.cf = codF
        self.residenza = res
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
    
    public func setCf(codf:String){
        self.cf = codf
    }
    
    public func setPiva(res:String){
        self.residenza = res
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
    
    public func getCF() -> String{
        self.cf
    }
    
    public func getResidenza() -> String{
        self.residenza
    }
}


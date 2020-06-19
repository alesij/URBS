//
//  Barcode.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

public class Barcode: Codable{
    private var codBarCode:Int // chiave
    private var barcodeString:String
    private var barcodeImage:String

    
    init(cod:Int, str:String, imgURL:String){
        self.codBarCode = cod
        self.barcodeString = str
        self.barcodeImage = imgURL
    }
    
    /* setter */
    public func setCodBarcode(codBarcode:Int){
        self.codBarCode = codBarcode
    }
    
    public func setBarcodeString(barcodeString:String){
        self.barcodeString = barcodeString
    }
    
    public func setBarcodeImage(barcodeImage:String){
        self.barcodeImage = barcodeImage
    }
    
    
    /* getter */
    public func getCodBarcode() -> Int{
        self.codBarCode
    }
    
    public func getBarcodeString() -> String{
        self.barcodeString
    }
    
    public func getBarcodeImage() -> String{
        self.barcodeImage
    }
    
}

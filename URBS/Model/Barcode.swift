//
//  Barcode.swift
//  URBS
//
//  Created by Alessio Di Matteo on 14/05/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

public class Barcode{
    private var codBarcode:String // chiave
    private var barcodeString:String?
    private var barcodeImage:String? // non so se asset è uiimage in cloudkit. po s ver
    
    init(cod:String,s:String){
        self.codBarcode = cod
        self.barcodeString = s
    }
    
    /* setter */
    public func setCodBarcode(codBarcode:String){
        self.codBarcode = codBarcode
    }
    
    public func setBarcodeString(barcodeString:String){
        self.barcodeString = barcodeString
    }
    
    public func setBarcodeImage(barcodeImage:String){
        self.barcodeImage = barcodeImage
    }
    
    
    /* getter */
    public func getCodBarcode() -> String{
        self.codBarcode
    }
    
    public func getBarcodeString() -> String?{
        self.barcodeString
    }
    
    public func getBarcodeImage() -> String?{
        self.barcodeImage
    }
    
}

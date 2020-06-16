//
//  ProdottiViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 15/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class ProdottiCollectionViewCell : UICollectionViewCell{
    @IBOutlet weak var prodottoImage: UIImageView!
    @IBOutlet weak var prodottoTitolo: UILabel!
    @IBOutlet weak var prodottoDescrizione: UILabel!
}


class ProdottiViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionViewProdotto: UICollectionView!
   
//    var searchProdotti = [ProdottoInNegozio]()
//    var searching = false

    var prodotti = [ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Tuta Adidas black",immagine: "tuta", descrizione: "Completo Adidas Black Taglia: M"),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Pallone Mondiali 2018",immagine: "pallone mondiali", descrizione: ""),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Scarpa Adidas Superstar",immagine: "adidas scarpe", descrizione: "Taglia 36/42")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewProdotto.delegate = self
        collectionViewProdotto.dataSource = self
        
    }
    

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return prodotti.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cella", for: indexPath) as! ProdottiCollectionViewCell
        let prodotto = prodotti[indexPath.row]
        cell.prodottoDescrizione.minimumScaleFactor = 0.1
        cell.prodottoDescrizione.adjustsFontSizeToFitWidth = true
        
        cell.prodottoTitolo.minimumScaleFactor = 0.1
        cell.prodottoTitolo.adjustsFontSizeToFitWidth = true
        
        cell.prodottoDescrizione.text = prodotto.getDescrizione()
        cell.prodottoTitolo.text = prodotto.getNome()
        cell.prodottoImage.image = UIImage(named: prodotto.getImmagine())
        
        cell.prodottoImage.layer.cornerRadius = 5
        cell.prodottoImage.layer.masksToBounds = true
        cell.prodottoImage.layer.borderWidth = 0;
        return cell
    }

}

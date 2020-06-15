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

    var prodotti = [ProdottoTableViewCell(codProdotto: 1, codNegozio: 2, disp: true, prezzo: 12, quantita: 1, nome: "Camicia", immagine: "Immagine Negozio 3", descrizione: "La più bella camicia del mondo"),ProdottoTableViewCell(codProdotto: 1, codNegozio: 2, disp: true, prezzo: 12, quantita: 1, nome: "Maglietta", immagine: "Immagine Negozio 2", descrizione: "La più bella camicia del mondo"),ProdottoTableViewCell(codProdotto: 1, codNegozio: 2, disp: true, prezzo: 12, quantita: 1, nome: "Maglietta", immagine: "Immagine Negozio 2", descrizione: "La più bella camicia del mondo")]
    
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
        print(prodotto.getNome())
        cell.prodottoDescrizione.minimumScaleFactor = 0.1
        cell.prodottoTitolo.minimumScaleFactor = 0.1
        cell.prodottoDescrizione.adjustsFontSizeToFitWidth = true
        cell.prodottoTitolo.adjustsFontSizeToFitWidth = true
        
        cell.prodottoDescrizione.text = prodotto.getDescrizione()
        cell.prodottoTitolo.text = prodotto.getNome()
        cell.prodottoImage.image = UIImage(named: prodotto.getImmagine())
        return cell
    }

}

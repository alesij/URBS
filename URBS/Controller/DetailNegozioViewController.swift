//
//  DetailNegozioViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 07/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class DetailNegozioTableViewCell : UITableViewCell{
    
    @IBOutlet weak var prezzoLabel: UILabel!
    @IBOutlet weak var quantitaLabel: UILabel!
    @IBOutlet weak var descrizioneLabel: UILabel!
    @IBOutlet weak var immagineProdotto: UIImageView!
    
}

class DetailNegozioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBarProdotti: UISearchBar!
    @IBOutlet weak var logoNegozio: UIImageView!
    @IBOutlet weak var labelNomeNegozio: UILabel!
    @IBOutlet weak var labelIndirizzoNegozio: UILabel!
    @IBOutlet weak var prodottiTableView: UITableView!
    
    var negozio: Negozio?
    var prodottiInNegozio = [ProdottoTableViewCell(codProdotto: 1, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "La camicia bella",immagine: "Barcode", descrizione: "Uaaa fratm sta cammis è a megl"), ProdottoTableViewCell(codProdotto: 2, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "O cess e cammis",immagine: "", descrizione: "Uaaa fratm sta cammis è o cess"), ProdottoTableViewCell(codProdotto: 2, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "blalba",immagine: "Barcode", descrizione: "")]
    var searching = false
    var searchProdotto = [ProdottoTableViewCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelNomeNegozio.text = negozio?.getNome()
        labelIndirizzoNegozio.text = (negozio?.getIndirizzo())! + ", " + (negozio?.getCitta())!
        logoNegozio.image = UIImage(named: (negozio?.getLogo())!)
        
        logoNegozio.layer.cornerRadius = logoNegozio.frame.size.height/2;
        logoNegozio.layer.masksToBounds = true;
        logoNegozio.layer.borderWidth = 0;
        labelNomeNegozio.adjustsFontSizeToFitWidth = true
        labelNomeNegozio.minimumScaleFactor = 0.1
        
        labelIndirizzoNegozio.adjustsFontSizeToFitWidth = true
        labelIndirizzoNegozio.minimumScaleFactor = 0.1
        
        prodottiTableView.delegate = self
        prodottiTableView.dataSource = self
        
        searchBarProdotti.delegate = self
        searchBarProdotti.returnKeyType = UIReturnKeyType.done
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
             return searchProdotto.count
         } else {
             return prodottiInNegozio.count
         }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProdottoCell", for: indexPath) as! DetailNegozioTableViewCell
        
        if searching{
            let prodotto = searchProdotto[indexPath.row]
            cell.descrizioneLabel.adjustsFontSizeToFitWidth = true
            cell.descrizioneLabel.minimumScaleFactor = 0.1
            cell.prezzoLabel.adjustsFontSizeToFitWidth = true
            cell.prezzoLabel.minimumScaleFactor = 0.1
            cell.quantitaLabel.adjustsFontSizeToFitWidth = true
            cell.quantitaLabel.minimumScaleFactor = 0.1
            
            cell.descrizioneLabel?.text = "\(prodotto.getNome())" + "\n" + "\(prodotto.getDescrizione())"
            cell.prezzoLabel.text = "\(prodotto.getPrezzo())" + " €"
            cell.quantitaLabel?.text = "\(prodotto.getQuantity())"
            cell.immagineProdotto?.image = UIImage(named: prodotto.getImmagine())
        } else {
            let prodotto = prodottiInNegozio[indexPath.row]
            cell.descrizioneLabel.adjustsFontSizeToFitWidth = true
            cell.descrizioneLabel.minimumScaleFactor = 0.1
            cell.prezzoLabel.adjustsFontSizeToFitWidth = true
            cell.prezzoLabel.minimumScaleFactor = 0.1
            cell.quantitaLabel.adjustsFontSizeToFitWidth = true
            cell.quantitaLabel.minimumScaleFactor = 0.1
            
            cell.descrizioneLabel?.text = "\(prodotto.getNome())" + "\n" + "\(prodotto.getDescrizione())"
            cell.prezzoLabel.text = "\(prodotto.getPrezzo())" + " €"
            cell.quantitaLabel?.text = "\(prodotto.getQuantity())"
            cell.immagineProdotto?.image = UIImage(named: prodotto.getImmagine())
        }
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBarProdotti.text == ""{
            searching = false
            prodottiTableView.reloadData()
        }else {
            searchProdotto = prodottiInNegozio.filter({$0.getNome().lowercased().contains(searchText.lowercased()) || $0.getDescrizione().lowercased().contains(searchText.lowercased())})
        searching = true
        prodottiTableView.reloadData()
        }
    }
}

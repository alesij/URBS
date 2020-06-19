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
    @IBOutlet weak var nomeProdotto: UILabel!
    @IBOutlet weak var immagineProdotto: UIImageView!
    @IBOutlet weak var descrizioneProdotto: UILabel!
    
}

class DetailNegozioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    @IBOutlet weak var searchBarProdotti: UISearchBar!
    @IBOutlet weak var logoNegozio: UIImageView!
    @IBOutlet weak var labelNomeNegozio: UILabel!
    @IBOutlet weak var labelIndirizzoNegozio: UILabel!
    @IBOutlet weak var prodottiTableView: UITableView!
    
    var temp = [ProdottoTableViewCell]()
    var negozio: Negozio?
    var prodottiInNegozio = [ProdottoTableViewCell(codProdotto: 1, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "Forbici professionali",immagine: "forbici", descrizione: "Taglio veloce, lame 0.2 mm"), ProdottoTableViewCell(codProdotto: 2, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "Lacca Jannettill",immagine: "lacca", descrizione: ""), ProdottoTableViewCell(codProdotto: 2, codNegozio: 1, disp: false, prezzo: 23.50, quantita: 18, nome: "Gel Capelli",immagine: "gel", descrizione: "Fissante per capelli lunga durata"),ProdottoTableViewCell(codProdotto: 2, codNegozio: 3, disp: false, prezzo: 23.50, quantita: 18, nome: "Torta Caprese",immagine: "caprese", descrizione: "Buonissima torta al cioccolato"),ProdottoTableViewCell(codProdotto: 2, codNegozio: 3, disp: false, prezzo: 23.50, quantita: 18, nome: "Cheescake lamponi",immagine: "cheescake", descrizione: ""),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Scarpa Adidas Superstar",immagine: "adidas scarpe", descrizione: "Taglia 36/42"),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Tuta Adidas black",immagine: "tuta", descrizione: "Completo Adidas Black Taglia: M"),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Pallone Mondiali 2018",immagine: "pallone mondiali", descrizione: ""),ProdottoTableViewCell(codProdotto: 2, codNegozio: 4, disp: false, prezzo: 23.50, quantita: 18, nome: "Pallone  Champions League final",immagine: "pallone champions", descrizione: "Pallone Adidas Finale Champions League 2019/2020")]
    
    var prodottiFiltrati = [ProdottoTableViewCell]()
    var searching = false
    var searchProdotto = [ProdottoTableViewCell]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .orange

        
        
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
        
        

        
        for i in 0..<prodottiInNegozio.count{
            if(prodottiInNegozio[i].getCodiceNegozio() == negozio?.getCodNegozio()){
                temp.append(prodottiInNegozio[i])
            }
            print(temp)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
             return searchProdotto.count
         } else {
//             return prodottiInNegozio.count
            return temp.count
         }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProdottoCell", for: indexPath) as! DetailNegozioTableViewCell
        
        if searching{
            let prodotto = searchProdotto[indexPath.row]
            cell.nomeProdotto.adjustsFontSizeToFitWidth = true
            cell.nomeProdotto.minimumScaleFactor = 0.1
            cell.prezzoLabel.adjustsFontSizeToFitWidth = true
            cell.prezzoLabel.minimumScaleFactor = 0.1
            cell.quantitaLabel.adjustsFontSizeToFitWidth = true
            cell.quantitaLabel.minimumScaleFactor = 0.1
            cell.descrizioneProdotto.minimumScaleFactor = 0.1
            cell.descrizioneProdotto.adjustsFontSizeToFitWidth = true
            
            cell.nomeProdotto?.text = prodotto.getNome()
            cell.descrizioneProdotto.text = prodotto.getDescrizione()
            cell.prezzoLabel.text = "\(prodotto.getPrezzo())" + " €"
            cell.quantitaLabel?.text = "\(prodotto.getQuantity())"
            cell.immagineProdotto?.image = UIImage(named: prodotto.getImmagine())
            cell.immagineProdotto.layer.cornerRadius = 5
            cell.immagineProdotto.layer.masksToBounds = true
            cell.immagineProdotto.layer.borderWidth = 0;
        } else {
            
//            let prodotto = prodottiInNegozio[indexPath.row]
            let prodotto = temp[indexPath.row]
            cell.nomeProdotto.adjustsFontSizeToFitWidth = true
            cell.nomeProdotto.minimumScaleFactor = 0.1
            cell.prezzoLabel.adjustsFontSizeToFitWidth = true
            cell.prezzoLabel.minimumScaleFactor = 0.1
            cell.quantitaLabel.adjustsFontSizeToFitWidth = true
            cell.quantitaLabel.minimumScaleFactor = 0.1
        
            cell.descrizioneProdotto.minimumScaleFactor = 0.1
            cell.descrizioneProdotto.adjustsFontSizeToFitWidth = true
            
            cell.nomeProdotto?.text = prodotto.getNome()
            cell.descrizioneProdotto.text = prodotto.getDescrizione()
            cell.prezzoLabel.text = "\(prodotto.getPrezzo())" + " €"
            cell.quantitaLabel?.text = "\(prodotto.getQuantity())"
            cell.immagineProdotto?.image = UIImage(named: prodotto.getImmagine())
            cell.immagineProdotto.layer.cornerRadius = 5
            cell.immagineProdotto.layer.masksToBounds = true
            cell.immagineProdotto.layer.borderWidth = 0;
            }
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBarProdotti.text == ""{
            searching = false
            prodottiTableView.reloadData()
        }else {
//            searchProdotto = prodottiInNegozio.filter({$0.getNome().lowercased().contains(searchText.lowercased()) || $0.getDescrizione().lowercased().contains(searchText.lowercased())})
              searchProdotto = temp.filter({$0.getNome().lowercased().contains(searchText.lowercased()) || $0.getDescrizione().lowercased().contains(searchText.lowercased())})
        searching = true
        prodottiTableView.reloadData()
        }
    }
}

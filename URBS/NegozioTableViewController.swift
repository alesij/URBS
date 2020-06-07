//
//  NegozioTableViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 05/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func toImage() -> UIImage? {
        if let data = Data(base64Encoded: self, options: .ignoreUnknownCharacters){
            return UIImage(data: data)
        }
        return nil
    }
}

class NegozioTableViewCell: UITableViewCell{
    
    @IBOutlet weak var nomeNegozioLabel: UILabel!
    @IBOutlet weak var negozioLogo: UIImageView!
    @IBOutlet weak var cittaLabel: UILabel!
    @IBOutlet weak var indirizzoLabel: UILabel!

}



class NegozioTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    var searchNegozi = [Negozio]()
    var searching = false
//    prova
    @IBOutlet weak var searchBarNegozio: UISearchBar!
    @IBOutlet weak var negozioTableView: UITableView!
    var negozi = [Negozio(cod: 1, nome: "Barber shop di Lello & Franco", citta: "Napoli", indirizzo: "via salvatore saltalamacchia d'autunno 11", logo: "Barcode", utente: 11),Negozio(cod: 1, nome: "Il negozio bello", citta: "Napoli", indirizzo: "Via delle grazie 11", logo: "Barcode", utente: 11),Negozio(cod: 1, nome: "CIAO", citta: "Napoli", indirizzo: "Via delle grazie 11", logo: "Barcode", utente: 11),Negozio(cod: 1, nome: "l negozio bellooooooooooooooooooo", citta: "Napoli", indirizzo: "Via delle grazie 11", logo: "Barcode", utente: 11)]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        negozioTableView.delegate = self
        negozioTableView.dataSource = self
        
        searchBarNegozio.delegate = self
        searchBarNegozio.returnKeyType = UIReturnKeyType.done
        }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NegozioCell", for: indexPath) as! NegozioTableViewCell

        if searching{
            let negozio = searchNegozi[indexPath.row]
            cell.nomeNegozioLabel.adjustsFontSizeToFitWidth = true
            cell.nomeNegozioLabel.minimumScaleFactor = 0.1
            cell.cittaLabel.adjustsFontSizeToFitWidth = true
            cell.cittaLabel.minimumScaleFactor = 0.1
            cell.indirizzoLabel.adjustsFontSizeToFitWidth = true
            cell.indirizzoLabel.minimumScaleFactor = 0.1
            
            cell.nomeNegozioLabel.text = negozio.getNome()
            cell.cittaLabel?.text = negozio.getCitta()
            cell.indirizzoLabel?.text = negozio.getIndirizzo()
            cell.negozioLogo?.image = UIImage(named: negozio.getLogo()!)
        } else {
            let negozio = negozi[indexPath.row]
            cell.nomeNegozioLabel.adjustsFontSizeToFitWidth = true
            cell.nomeNegozioLabel.minimumScaleFactor = 0.1
            cell.cittaLabel.adjustsFontSizeToFitWidth = true
            cell.cittaLabel.minimumScaleFactor = 0.1
            cell.indirizzoLabel.adjustsFontSizeToFitWidth = true
            cell.indirizzoLabel.minimumScaleFactor = 0.1
            
            cell.nomeNegozioLabel.text = negozio.getNome()
            cell.cittaLabel?.text = negozio.getCitta()
            cell.indirizzoLabel?.text = negozio.getIndirizzo()
            cell.negozioLogo?.image = UIImage(named: negozio.getLogo()!)
        }

        
       

        return cell
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
            return searchNegozi.count
        } else {
            return negozi.count
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBarNegozio.text == ""{
            searching = false
            negozioTableView.reloadData()
        }else {
        searchNegozi = negozi.filter({$0.getNome().lowercased().contains(searchText.lowercased()) || $0.getIndirizzo().lowercased().contains(searchText.lowercased()) || $0.getCitta().lowercased().contains(searchText.lowercased())})
        searching = true
        negozioTableView.reloadData()
        }
    }
}

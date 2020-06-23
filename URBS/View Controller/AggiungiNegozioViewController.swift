//
//  AggiungiNegozioViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 22/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit
protocol AggiungiNegozioDelegate{
    func addNegozio(negozio : String)
}

class AggiungiNegozioViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    var delegate : AggiungiNegozioDelegate?
    @IBOutlet weak var nomeNegozioTextField: UITextField!
    @IBOutlet weak var categoriaNegozioTextField: UITextField!
    @IBOutlet weak var cittaTextField: UITextField!
    @IBOutlet weak var indirizzoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var fotoNegozioButton: UIButton!
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePress(_ sender: UIBarButtonItem) {
        
        
        if(nomeNegozioTextField.text == "" || cittaTextField.text == "" || indirizzoTextField.text == ""){
//            compilare i campi obbligatori
        }else{
            
            let negozioProva = "Prova"
//        chiamata alla funzione della preceentev view
        delegate?.addNegozio(negozio: negozioProva)
        

        self.dismiss(animated: true, completion: {
                    self.presentingViewController?.dismiss(animated: true, completion: nil)
                })
        }
    }
    
    
    @IBAction func addImage(_ sender: UIButton) {
        showChooseSourceTypeAlertController()
    }
    
    func showChooseSourceTypeAlertController(){
        let photoLibraryAction = UIAlertAction(title: "Scegli dalla libreria", style: .default) { (action) in
            self.showImagePickerController(sourceType: .photoLibrary)
        }
        let cameraAction = UIAlertAction(title: "Scatta una foto", style: .default) { (action) in
            self.showImagePickerController(sourceType: .camera)
        }
        let cancelAction = UIAlertAction(title: "Cancella", style: .cancel, handler: nil)
        
        AlertService.showAlert(style: .actionSheet, title: nil, message: nil, actions: [photoLibraryAction, cameraAction, cancelAction], completion: nil)

    }
    
    func showImagePickerController(sourceType: UIImagePickerController.SourceType){
          let imagePickerController = UIImagePickerController()
           imagePickerController.delegate = self
           imagePickerController.allowsEditing = true
           imagePickerController.sourceType = sourceType
           present(imagePickerController, animated: true, completion: nil)
      }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            self.fotoNegozioButton.setImage(editedImage.withRenderingMode(.alwaysOriginal), for: .normal)
        }else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            self.fotoNegozioButton.setImage(originalImage.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        dismiss(animated: true, completion: nil)
    }
}

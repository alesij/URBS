//
//  LoginViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 19/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //        dismiss keyboard
        self.hideKeyboardWhenTappedAround()
    }
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if(emailTextField.text == "" || passwordTextField.text == ""){
            //            banner che chiede la compilazione di tutti i campi
        }else{
            //            login avvenuto con successo
            login(email:emailTextField.text!, password:passwordTextField.text!, withCompletion: { detail, error in
                if error != nil {
                    return
                }
                
                UserDefaults.standard.set(detail, forKey: "UID")
                
                if(detail<0){
                    //                    errore login
                }else{
                    DispatchQueue.main.async {
                       self.performSegue(withIdentifier: "LoginSegue", sender: self)
                    }

                }
            })
            
        }
    }
    
    public func login(email:String, password:String, withCompletion completion: @escaping (Int, Error?) -> Void){
        let url = URL(string: Utility.urlREST+"login.php")
        guard let requestUrl = url else { fatalError() }
        // Prepare URL Request Object
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        
        // HTTP Request Parameters which will be sent in HTTP Request Body
        let postString = "user="+email+"&pass="+password
        // Set HTTP Request Body
        request.httpBody = postString.data(using: String.Encoding.utf8);
        // Perform HTTP Request
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            // Check for Error
            if let error = error {
                print("Error took place \(error)")
                return
            }
            
            // Convert HTTP Response Data to a String
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                
                let userID = Int(dataString) ?? -1
                
                if userID >= 0{
                    completion(userID,nil)
                }
                else{
                    completion(-1,nil)
                }
            }
        }
        task.resume()
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}

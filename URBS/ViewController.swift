//
//  ViewController.swift
//  URBS
//
//  Created by Alessio Di Matteo on 01/06/2020.
//  Copyright © 2020 Alessio Di Matteo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        checkCredentials(email:"SonoGay", password:"Mi piace il cazzo", withCompletion: { detail, error in
            if error != nil {
                return
            }
            // salva detail in user defaults e vedi se te lo ritrovi.
        })
    }

    public func checkCredentials(email:String, password:String, withCompletion completion: @escaping (Int, Error?) -> Void){
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


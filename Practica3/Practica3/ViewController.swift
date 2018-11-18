//
//  ViewController.swift
//  Practica3
//
//  Created by XCode on 30/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textoPasar: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(segue.identifier == "view1"){
            (segue.destination as! ViewController2).textoPasado = textoPasar.text!
        }else{
            (segue.destination as! ViewController3).textoPasado2 = textoPasar.text!
        }
        
        
    }
    
    @IBAction func mostrarTexto(){
        let alert = UIAlertController(title: "Login", message: "Introduce usuario y contraseña",preferredStyle: .alert)
        alert.addTextField { textField in textField.placeholder = "nombre"}
        
        alert.addTextField { textField in
            textField.isSecureTextEntry = true
            textField.placeholder = "contraseña"}
        
        let cancel = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { action in
            print("autenticación")
            print(alert.textFields![0].text!)
            print(alert.textFields![1].text!)
        })
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func mostrarOpciones(){
        let alert = UIAlertController(title: "Selección", message: "Elija una opción", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil); alert.addAction(cancel)
        let action1 = UIAlertAction(title: "Opcion 1", style: .default, handler: { action in print("Seleccionada opcion 1")
        });
        let action2 = UIAlertAction(title: "Opcion 2", style: .default, handler: { action in print("Seleccionada opcion 2")
        });
        let action3 = UIAlertAction(title: "Opcion 3", style: .default, handler: { action in print("Seleccionada opcion 3")
        });
        let action4 = UIAlertAction(title: "Opcion 4", style: .default, handler: { action in print("Seleccionada opcion 4")
        });
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(action4)
        present(alert, animated: true)
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}



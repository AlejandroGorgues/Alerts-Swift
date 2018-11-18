//
//  ViewController2.swift
//  Practica3
//
//  Created by XCode on 30/10/18.
//  Copyright © 2018 XCode. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet var textomostrar: UILabel!
    
    var textoPasado: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        textomostrar.text = textoPasado
        
    }
    
    @IBAction func volverAtras(){
        dismiss(animated: true, completion: nil)
    }

}

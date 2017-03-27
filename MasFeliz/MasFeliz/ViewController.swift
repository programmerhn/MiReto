//
//  ViewController.swift
//  MasFeliz
//
//  Created by Oscar Pineda on 24/3/17.
//  Copyright © 2017 Oscar Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mensajePositivo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dameUnMensajePositivo() {
        mensajePositivo.text = "Hoy es un bonito día"
    }
}


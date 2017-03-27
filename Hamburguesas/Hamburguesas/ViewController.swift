//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Oscar Pineda on 26/3/17.
//  Copyright © 2017 Oscar Pineda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Creación de los IBOutlet
    
    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    @IBOutlet weak var precioHamburguesa: UILabel!
    
    // Creación de las instancias
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let precios = ListaDePrecios()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func obtenerHamburguesa(_ sender: Any) {
        nombrePais.text = paises.obtenPais()
        nombrePais.textAlignment = .center
    
        nombreHamburguesa.text = hamburguesas.obtenHamburguesa()
        precioHamburguesa.text = String(precios.obtenPrecio())
        
        // Código para cambiar el color del fondo.
        
        let colores = Colores()
        let colorAleatorio = colores.regresaColorAleatorio()
    
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}


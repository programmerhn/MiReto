//
//  Datos.swift
//  Hamburguesas
//
//  Created by Oscar Pineda on 26/3/17.
//  Copyright © 2017 Oscar Pineda. All rights reserved.
//

import Foundation

class ColeccionDePaises{
    var paises = [
            "Honduras",
            "Nicaragua",
            "El Salvador",
            "Costa Rica",
            "Panamá",
            "Colombia",
            "Venezuela",
            "Brasil",
            "Ecuador",
            "Argentina",
            "Uruguay",
            "Paraguay",
            "Belize",
            "Guatemala",
            "Mexico",
            "Canadá",
            "USA",
            "España",
            "Francia",
            "Rusia"
    ]
    
    func obtenPais() -> String {
        let posicionPais = Int(arc4random()) % paises.count
        return paises[posicionPais]
    }
    
}

class ColeccionDeHamburguesa{
    // Lista tomada de www.burgerking.com.mx/menu
    
    var hamburguesas: [String] = [
        "Whopper BBQ",
        "Whopper con Queso",
        "Hamburguesa con Queso",
        "Whopper con doble Queso",
        "Haburguesa con Queso y Tocino",
        "Whopper Angry",
        "Rodeo Burger",
        "Whopper Jr. con Queso",
        "Big KING",
        "Mega XT Queso y Tocino",
        "Mega XT Clásica o Aguacate",
        "X-Treme",
        "King de Pollo",
        "Chicken Big King",
        "Tendergrill",
        "Crispy Chicken con Queso",
        "Queso Jalapeño Chicken",
        // Wendys  www.wendys.cl
        "Baconator Doble",
        "Baconator Simple",
        "Chedar Lovers"
    ]
    
    func obtenHamburguesa()-> String{
        let posicionHamburguesa = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicionHamburguesa]
    }
}

class ListaDePrecios {
    let precioHamburguesa = [
        60.00,
        65.00,
        75.00,
        80.00,
        85.00,
        90.50,
        110.00,
        120.60,
        130.10,
        135.15,
        140.00,
        150.00,
        175.00,
        200.00,
        205.50,
        210.00,
        215.00,
        230.00,
        236.00,
        250.00
    ]
        
        func obtenPrecio() -> Double {
            let posicion = Int(arc4random()) % precioHamburguesa.count
            return precioHamburguesa[posicion]
        }
}

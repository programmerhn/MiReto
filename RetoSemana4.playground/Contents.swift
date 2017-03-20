//: Playground - noun: a place where people can play

/* Al fin he terminado mi reto, pensé que no lo haría, he tenido que revisar de nuevo todos los videotutoriales de la semana 4 y 3, he desarrollado el ejercicio cumpliendo exactamente con la descripción del ejercicio. Me llama la curiosidad y me dió la tentación de mostrar el descenso de la velocidad de alta a baja, pero en el ejemplo del ejercicio solo sigue bajando de alta a media, y así lo he dejado. Dios les bendiga. */

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50,VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena : String ){
        
        let leyenda : String
        let velActual = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Alta"
        }
        
        return (actual : velActual, velocidadEnCadena : leyenda )
    }
}

var auto = Auto()

let range = 1...20

for var i in range{
    let velocidad = auto.cambioDeVelocidad()
    print("\(velocidad.actual)\t\t \(velocidad.velocidadEnCadena)")
}

//: Playground - noun: a place where people can play

import UIKit

// Mini reto del módulo 2
// Nombre: Oscar Omar Pineda
/* Cómo en la instrucciones del Mini Reto indicaba que solo se debía hacer un solo programa aplicando las 4 reglas, lo desarrollé de manera que, no se imprimiera de forma repetida un número si aplicaba a más de una regla. Espero estar bien, sino me lo hacen saber, ya que lo desarrollé de la otra forma. Dios les bendiga. */

var numeros = 0...100


print("NÚMERO\t\t\tREGLAS APLICADAS")

for numero in numeros {
    var r1="", r2="", r3=""
    
        if numero % 5 == 0 {
            r1 = " #Bingo!!!"
        }
        
        if numero % 2 == 0{
            r2 = "#Par"
        }else{
            r2 = "#Impar"
        }
        
        switch numero {
        case 30...40:
            r3 = "#Viva Swift"
        default:
            r3 = ""
    }
    
    print("\(numero)\t\t\t\(r1)\t\t\(r2)\t\t\(r3)")
}
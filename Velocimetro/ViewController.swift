//
//  ViewController.swift
//  Velocimetro
//
//  Created by Patrick on 22/2/16.
//  Copyright © 2016 Patrick. All rights reserved.
//

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad: Velocidades
    
    init ()
    {
        self.velocidad = Velocidades.Apagado
        
    }
    func cambioDeVelocidad() ->(actual: Int, velocidadEnCadena: String){
        var estado : String = ""
        
        if(velocidad.rawValue == 0){
            estado = "\(velocidad.rawValue) + Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        }
        if(velocidad.rawValue == 20){
            
            self.velocidad = Velocidades.VelocidadMedia
            estado =  "\(velocidad.rawValue) + Velocidad Media"
            
        };  if(velocidad.rawValue == 50){
            self.velocidad = Velocidades.VelocidadAlta
            estado =   "\(velocidad.rawValue) + Velocidad Baja"
            
        }; if(velocidad.rawValue == 120){
            estado = "\(velocidad.rawValue) + Velocidad Alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        return(self.velocidad.rawValue, estado)
    }

var auto = Auto()

for n in 1...20{
    auto.velocidad = Velocidades.VelocidadBaja
    print (n, auto.cambioDeVelocidad())
}

}













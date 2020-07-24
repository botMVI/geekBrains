//
//  main.swift
//  3_ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 23.07.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import Foundation

enum Engine {
    case on, off
}
enum Window {
    case open, close
}
enum Trunk {
    case load, unload
}


struct SportCar {
    let brand: String
    let year: Int
    let volume_of_trunk: Double
    var window: Window
    let volume_trunk_full: Double
    var engine: Engine
    let trunk: Trunk
    
    mutating func turnEngine(with engine: Engine) {
        self.engine = engine
    }
    
    // !Возникли трудности!
//    init() {
//        window = .close
//        engine = .off
//    }
//
//    init(window: Window, engine: Engine) {
//        self.window = window
//        self.engine = engine
//    }

}

var audi = SportCar(brand: "Audi", year: 2020, volume_of_trunk: 5.0, window: .open, volume_trunk_full: 4.0, engine: .on, trunk: .load)
var bmw = SportCar(brand: "BMW", year: 2020, volume_of_trunk: 3.0, window: .close, volume_trunk_full: 0.0, engine: .off, trunk: .unload)



audi.turnEngine(with: .off)
//print(audi)
//print(bmw)



struct TruсkCar {
    let brand: String
    let year: Int
    let volume_of_trunk: Double
    let volume_trunk_full: Double
    let window: Window
    var engine: Engine
    let trunk: Trunk
    
    mutating func turnEngine(with engine: Engine) {
        self.engine = engine
    }
}

var Kamaz = TruсkCar(brand: "Kamaz", year: 2020, volume_of_trunk: 50.5, volume_trunk_full: 0.0, window: .close,  engine: .off, trunk: .unload)


Kamaz.turnEngine(with: .on)
print(Kamaz)

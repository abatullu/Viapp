//
//  Location.swift
//  Viapp
//
//  Created by Álvaro Romero Limón on 16/10/2018.
//  Copyright © 2018 Álvaro Romero Limón. All rights reserved.
//

import Foundation

struct Location {
    var pueblo: String?
    var nombreCalle: String?
    var numero: Int?
    var letra: String?
    
    func isReadyToAdvance1() -> Bool {
        return pueblo != nil
    }
    
    func isReadyToAdvance2() -> Bool {
        return nombreCalle != nil && numero != nil
    }
    
}

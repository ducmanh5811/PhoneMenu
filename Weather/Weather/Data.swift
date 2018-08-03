//
//  Data.swift
//  Weather
//
//  Created by Tinh Vu on 8/3/18.
//  Copyright © 2018 Tinh Vu. All rights reserved.
//

import Foundation

class Weather {
    var day : String
    var photo : String
    var temper : String
    
    init(day :String, photo :String, temper : String){
        self.day = day
        self.photo = photo
        self.temper = temper
    }
    
}

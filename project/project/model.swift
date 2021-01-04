//
//  model.swift
//  project
//
//  Created by alqattan on 03/01/2021.
//

import Foundation
struct data : Identifiable {
    var number : Int
    var type : String
    var price : Double
    let id = UUID()
}
var Data = [
    data(number: 1, type: "13", price: 1.500),
    data(number: 2, type: "15", price: 1.500),
    data(number: 3, type: "16", price: 1.500),
    data(number: 4, type: "18", price: 20.500),
    data(number: 5,type: "19", price: 25.00),
    data(number: 6, type: "20",price: 30.00)
    
    
    
    
]


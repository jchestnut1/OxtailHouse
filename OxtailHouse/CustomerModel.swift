//
//  CustomerModel.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/3/25.
//

import Foundation

class Customer: Identifiable {
    let id = UUID()
    var name: String
    var email: String
    var visits: Int
    
    init(name: String, email: String, visits: Int){
        self.name = name
        self.email = email
        self.visits = visits
    }
    
    func summary() -> String {
        "\(name) - Visits: \(visits)"
    }
}

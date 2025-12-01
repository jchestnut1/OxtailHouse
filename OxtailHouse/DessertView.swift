//
//  DessertView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 11/29/25.
//

import SwiftUI

struct DessertView: View {
    
    let dessertItems = [
        "Cheesecake" : 3.99,
        "Pound Cake" : 2.50,
        "Lava Cake" : 4.50,
        "Sweet Potatoe Pie" : 4.00,
        "Pumpkin Pie" : 3.75
    ]
    
    
    var body: some View {
        List {
            ForEach(dessertItems.sorted { $0.key < $1.key}, id: \.key){ name, price in
                Text(name)
            }
        }
    }
}

#Preview {
    DessertView()
}

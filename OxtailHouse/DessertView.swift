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
        "Strawberry Shortcake" : 4.25,
        "Lava Cake" : 4.50,
        "Sweet Potatoe Pie" : 4.00,
        "Pumpkin Pie" : 3.75,
        "Peach Cobbler" : 5.00
    ]
    
    var sortedDesserts: [(name: String, price: Double)]{
        dessertItems
            .sorted { $0.value < $1.value }
            .map{ (name: $0.key, price: $0.value) }
    }
    
    
    var body: some View {
        VStack{
            /*List {
                ForEach(dessertItems.sorted { $0.key < $1.key}, id: \.key){ name, price in
                    Text(name); Text("$\(price, specifier: "%.2f")")
                }*/
            
            List{
                ForEach(sortedDesserts, id: \.name){ item in
                    MenuItemRowView(name:item.name, price:item.price)
                }
            }
        }
    }
}


#Preview {
    DessertView()
}

//
//  MenuView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 11/26/25.
//

import SwiftUI

struct MenuView: View {
    
    @State private var showMessage = false
    @State private var showAfforableOnly = false
    @State private var showDesserts = false
    
    let menuItems = [
        //key, value
        "Oxtail and Rice" : 27.99, // $0
        "Oxtail Soup" : 15.99, // $1
        "Oxtail Tacos" : 25.99,//$2
        "Curry Oxtail" : 26.99,
        "Smoked Oxtail" : 32.99,
        "6 Piece Chicken Wings" : 14.99,
        "12 Piece Chicken Wings" : 18.99,
        "20 Piece Chicken Wings" : 26.99
    ]
    
    var sortedMenu: [(name: String, price: Double)]{
        menuItems
            .sorted { $0.key < $1.key }
            .map{ (name: $0.key, price: $0.value) }
    }
    
    var displayedMenu: [(name: String, price: Double)]{
        if showAfforableOnly{
            return sortedMenu.filter{ $0.price < 22 }
        }else{
            return sortedMenu
        }
    }
    
    var averagePrices: Double {
        let price = menuItems.values
        let total = price.reduce(0, +)
        return total / Double(price.count)
    }
    
    func getTotalItems() -> Int {
        displayedMenu.count
    }
    
    func getHighestPrice() -> Double {
        var highest = 0.0
        for items in displayedMenu{
            if items.price > highest{
                highest = items.price
            }
        }
        return highest
    }
    
    func getLowestPrice() -> Double {
        var lowest = Double.greatestFiniteMagnitude
        for items in displayedMenu{
            if items.price < lowest{
                lowest = items.price
            }
        }
        return lowest
    }
    
    var body: some View {
        //let sortedMenu = menuItems.sorted { $1.key > $0.key }
        
        
        VStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                
                Text("Today's Menu")
                    .font(.title2)
                    .bold()
            }
            
            VStack{
                Toggle("Show Welcome Message", isOn: $showMessage)
                Toggle("Show only affordable items < $22.00", isOn: $showAfforableOnly)
            }
            .padding()
                
            
            if showMessage{
                Text("Welcome to Oxtail House")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            
            Button("View Desserts"){
                showDesserts = true
                print(showDesserts)
            }
            .foregroundColor(.black)
            .padding()
            .background(Color.green.opacity(0.3))
            .cornerRadius(10)
            .sheet(isPresented: $showDesserts){
                DessertView()
            }
        
            List{
                ForEach(displayedMenu, id: \.name){ name, price in
                    HStack{
                        Text(name)
                        Spacer()
                        Text("$\(price, specifier: "%.2f")")
                    }
                }
            }
        }
        
        Section{
            VStack{
                HStack{
                    Text("Total Items: \(getTotalItems())")
                }
                HStack{
                    Text("Highest Price: $\(getHighestPrice(), specifier: "%.2f")")
                   
                }
                HStack{
                    Text("Lowest Price: $\(getLowestPrice(), specifier: "%.2f")")
                }
                HStack{
                    Text("Average Price: $\(averagePrices, specifier: "%.2f")")
                }
            }
        }
        }
    
    
    }


#Preview {
    MenuView()
}

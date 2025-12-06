//
//  HomeMenuView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/3/25.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        
        VStack{
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Text("Oxtail House")
                .font(.title2)
                .bold()
        }
        
        NavigationStack{
            List{
                NavigationLink("Menu View"){
                    MenuView()
                }
                NavigationLink("Dessert View"){
                    DessertView()
                }
                NavigationLink("Reservation Form"){
                    ReservationForm()
                }
                NavigationLink("Customer List"){
                    CustomerView()
                }
            }
        }
    }
}

#Preview {
    HomeMenuView()
}

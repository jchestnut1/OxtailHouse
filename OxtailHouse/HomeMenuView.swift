//
//  HomeMenuView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/3/25.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
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

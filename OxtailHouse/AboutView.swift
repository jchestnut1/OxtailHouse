//
//  AboutView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 11/22/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Little Lemon")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .padding([.leading, .trailing], 25)
            
            Text("Little Lemon is a cozy Mediterranean restaurant serving fresh and healthy dishes our goal is to bring people together through great food and warm hospitality.")
                .font(.custom("Times New Roman" , size: 18))
                .multilineTextAlignment(.center)
                .padding(.top, 4)
                .padding(.bottom, 20)
            
            HStack {
                Image(systemName: "fork.knife")
                    .font(.title)
                    .foregroundColor(.yellow)
                Image(systemName: "leaf")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .padding([.leading, .trailing] , 20)
                Image(systemName: "map")
                    .font(.title)
                    .foregroundColor(.yellow)
            }
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


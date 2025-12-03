//
//  MenuItemRowView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/1/25.
//

import SwiftUI

struct MenuItemRowView: View {
    
    let name: String
    let price: Double
    
    
    var body: some View {
        HStack{
            Text(name)
                .font(.headline)
            
            Spacer()
            
            Text("$\(price, specifier: "%.2f")")
                .foregroundColor(.secondary)
        }
//        .padding()
    }
}

/*#Preview {
    MenuItemRowView()
}*/

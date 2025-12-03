//
//  PremiumBadge.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/1/25.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
                .bold()
        }
        .padding(6)
        .background(Color.orange.opacity(0.2))
        .cornerRadius(6)
    }
}

#Preview {
    PremiumBadge()
}

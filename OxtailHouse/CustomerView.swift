//
//  CustomerView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/3/25.
//

import SwiftUI

struct CustomerView: View {
    // creating objects
    @State private var customers: [Customer] = {
        let sample = [
            Customer(name: "Jay",
                     email: "Jay@yahoo.com",
                     visits: 2),
            Customer(name: "James",
                     email: "James@yahoo.com",
                     visits: 3),
            Customer(name: "Mary",
                     email: "Mary@email.com",
                     visits: 4),
            Customer(name: "Terry",
                     email: "Terry@gmail.com",
                     visits: 3),
            Customer(name: "Jessica",
                     email: "Jessica22@yahoo.com",
                     visits: 6),
            Customer(name: "Frank",
                     email: "Frank513@gmail.com",
                     visits: 2)
        ]
        // Example: mark members based on visits (>=4)
        sample.forEach { customer in
            if customer.visits >= 4 {
                customer.isLoyaltyMember = true
            }
        }
        return sample
    }()

    var body: some View {
        List(customers) { c in
            HStack {
                VStack(alignment: .leading) {
                    Text(c.name)
                        .font(.headline)
                    Text("Visits: \(c.visits)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                if c.isLoyaltyMember {
                    LoyaltyBadge()
                }
            }
        }
    }
}

#Preview {
    CustomerView()
}

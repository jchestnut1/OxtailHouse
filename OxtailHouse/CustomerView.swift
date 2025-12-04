//
//  CustomerView.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 12/3/25.
//

import SwiftUI

struct CustomerView: View {
    //creating objects
    var customers: [Customer] = [
        Customer(name: "Jay",
                 email: "Jay@yahoo.com",
                 visits: 2),
        Customer(name: "James",
                 email: "James@yahoo.com",
                 visits: 3),
        Customer(name: "Mary",
                 email: "Mary@email.com",
                 visits: 4
                )
    ]
    
    
    
    var body: some View {
        List(customers){ c in
            Text(c.summary())}
    }
}

#Preview {
    CustomerView()
}

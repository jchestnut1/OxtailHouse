//
//  ReservationForm.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 11/19/25.
//

import SwiftUI

struct ReservationForm: View {
    let restautantName = "Oxtail House"
    let maxGuest = 10
    let maxChildren = 5
    
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var numberChildren = 0
    @State private var occasion = ""
    
    var body: some View {
        Form {
            Section{
                Text(restautantName)
                    .font(.title)
                    .bold()
                Text("Reservation Form")
                    .foregroundColor(.secondary)
            }
            Section(header: Text("Reservation Details")){
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                if userName.isEmpty {
                    Text("Please enter a username.")
                        .font(.footnote)
                        .foregroundColor(.red)
                }
                
                Stepper("Guest:  \(guestCount)", value: $guestCount, in: 1 ... maxGuest)
                
                Stepper("Children: \(numberChildren)", value: $numberChildren, in: 0 ... maxChildren)
            }
            
            Section(header:Text("Contact")){
                TextField("Phone" , text: $phoneNumber)
                    .keyboardType(.numberPad)
                
                if phoneNumber.isEmpty {
                    Text("Contact numbers are required for Reservations.")
                        .font(.footnote)
                        .bold(true)
                        .foregroundColor(.red)
                }
            }
            
            Section(header:Text("Occasion")){
                TextField("Occasion", text: $occasion)
            }
            
            Section{
                Button("Preview reservation"){
                    previewText = """
                Name: \(userName)
                Guest: \(guestCount)
                Children: \(numberChildren)
                Phone: \(phoneNumber)
                Occasion: \(occasion)
                """
                }
            }
            
            Section(header:Text("Preview")){
                Text(previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    ReservationForm()
}

//
//  ReservationForm.swift
//  OxtailHouse
//
//  Created by Jay Chestnut on 11/19/25.
//

import SwiftUI

struct ReservationForm: View {
    // Constants
    let restaurantName = "Oxtail House"
    let maxGuest = 10
    let maxChildren = 5

    // State
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    @State private var numberChildren = 0
    @State private var occasion = ""
    @State private var showPreview = false
    @State private var attemptedPreview = false

    // Helpers
    func guestLabel(_ count: Int) -> String {
        count == 1 ? "Guest" : "Guests"
    }

    func estimateTotal(adults: Int, children: Int) -> Double {
        let adultPrice = 15.0
        let childPrice = 8.0
        return Double(adults) * adultPrice + Double(children) * childPrice
    }

    func validateAndShowSummary() {
        attemptedPreview = true

        if !userName.isEmpty && guestCount > 0 && !phoneNumber.isEmpty {
            showPreview = true
        } else {
            showPreview = false
            previewText = ""
        }
    }

    var body: some View {
        Form {
            Section {
                Text(restaurantName)
                    .font(.title)
                    .bold()
                Text("Reservation Form")
                    .foregroundColor(.secondary)
            }

            Section(header: Text("Reservation Details")) {
                TextField("Name", text: $userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)

                if attemptedPreview && userName.isEmpty {
                    Text("Please enter a username.")
                        .font(.footnote)
                        .foregroundColor(.red)
                }

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1 ... maxGuest)

                Stepper("Children: \(numberChildren)", value: $numberChildren, in: 0 ... maxChildren)
            }

            Section(header: Text("Contact")) {
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.numberPad)

                if attemptedPreview && phoneNumber.isEmpty {
                    Text("Contact numbers are required for Reservations.")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.red)
                }
            }

            Section(header: Text("Occasion")) {
                TextField("Occasion", text: $occasion)
            }

            Section {
                Button("Preview Reservation") {
                    validateAndShowSummary()
                    if showPreview {
                        previewText = """
                        Name: \(userName)
                        \(guestLabel(guestCount)): \(guestCount)
                        Children: \(numberChildren)
                        Phone: \(phoneNumber)
                        Occasion: \(occasion)
                        """
                    }
                }
            }
            .padding()
            .buttonStyle(.bordered)

            if showPreview {
                Section(header: Text("Preview")) {
                    Text(previewText)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }

                Section(header: Text("Summary")) {
                    VStack {
                        HStack {
                            Text("Reservation Summary")
                                .font(.headline)
                            Spacer()
                            Image(systemName: "doc.text.magnifyingglass")
                        }

                        //HStack { Text("Name"); Spacer(); Text(userName) }
                       // HStack { Text(guestLabel(guestCount)); Spacer(); Text("\(guestCount)") }
                        //HStack { Text("Children"); Spacer(); Text("\(numberChildren)") }

                        HStack {
                            Text("Estimated Total")
                            Spacer()
                            Text("$\(estimateTotal(adults: guestCount, children: numberChildren), specifier: "%.2f")")
                        }
                    }
                }
            } else {
                // Optional: gentle guidance when not showing preview
                Section(header: Text("Preview")) {
                    Text("Fill in details and tap Preview reservation.")
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}

#Preview {
    ReservationForm()
}

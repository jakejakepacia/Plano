//
//  AddEventView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//

import SwiftUI

struct AddEventView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var vm: HomeViewModel

    @State private var name = ""
    @State private var description = ""
    @State private var startDate = Date()
    @State private var endDate = Date()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Event Name", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Description", text: $description)
                .textFieldStyle(.roundedBorder)

            DatePicker("Start Date", selection: $startDate)
            DatePicker("End Date", selection: $endDate)

            Button("Save Event") {
                let newEvent = PlanoEvent(
                    id: Int.random(in: 1...100000),
                    name: name,
                    description: description,
                    startDate: startDate,
                    endDate: endDate
                )

                vm.saveEvents(newEvent)
                dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .navigationTitle("Add Event")
    }
}

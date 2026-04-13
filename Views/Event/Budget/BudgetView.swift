//
//  BudgetView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/12/26.
//

import SwiftUI

struct BudgetView: View {
    
    @State private var showAddExpense = false
    @State private var planoCard: PlanoCard?
    
    var event : PlanoEvent
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {

            ScrollView {
                LazyVGrid(columns: columns, spacing: 12) {

                    ForEach(event.planoCards ?? [], id: \.id) { item in

                        VStack(alignment: .leading, spacing: 6) {

                            Text(item.name)
                                .font(.headline)

                            Text(item.description)
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .lineLimit(2)

                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Budget").bold()
                                        .font(.caption)
                                    Text("$\(item.budget, specifier: "%.2f")")
                                        .font(.caption)

                                    Text("Spent").bold()
                                        .font(.caption)
                                    Text("$\(item.spent, specifier: "%.2f")")
                                        .font(.caption)
                                }

                                Spacer()

                                let progress = item.budget > 0 ? item.spent / item.budget : 0
                                CircularProgressView(progress: progress)
                            }

                            Button("Add Expense") {
                                planoCard = item
                            }
                        }
                        .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
                        .cardStyle()
                    }
                }
                .padding()
            }

            Button {
                showAddExpense = true
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 24))
                    .padding(20)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
            .padding()
        }

        // ✅ SINGLE sheet for selected item
        .sheet(item: $planoCard) { item in
            AddExpenseView(expense: item)
                .presentationDetents([.medium, .large])
        }

        // ✅ second sheet for add category
        .sheet(isPresented: $showAddExpense) {
            AddCategoryView()
                .presentationDetents([.medium, .large])
        }
    }
}

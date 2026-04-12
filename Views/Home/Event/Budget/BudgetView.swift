//
//  BudgetView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/12/26.
//

import SwiftUI

struct BudgetView: View {
    
    @State private var showAddExpense = false
    
    var event : PlanoEvent
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        ScrollView{
            // MARK: Grid
            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(event.planoCards ?? [], id: \.id) { item in
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(item.name)
                            .font(.headline)
                        
                        Text(item.description)
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .lineLimit(2)
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("Budget")
                                    .font(.caption)
                                    .bold()
                                Text("$\(item.budget, specifier: "%.2f")")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                    
                                Text("Spent")
                                    .font(.caption)
                                    .bold()
                                Text("$\(item.spent, specifier: "%.2f")")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            let progress = item.spent / item.budget
                            CircularProgressView(progress: progress)
                          
                        }
                        
                        Button("Add Expense"){
                            showAddExpense = true
                        }
                        .sheet(isPresented: $showAddExpense) {
                            AddExpenseView()
                                .presentationDetents([.medium, .large])
                        }
              
                      
                    }
                    .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
                    .cardStyle()
                }
            }
        }
        .padding()
        .navigationTitle("Track Budget")
        .background(Color(.systemGroupedBackground))
        
    }
}

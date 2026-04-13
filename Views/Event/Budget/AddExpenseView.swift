//
//  AddExpenseView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/13/26.
//
import SwiftUI

struct AddExpenseView: View {
    var expense: PlanoCard?
    
    var body: some View {
        Text("Hello, World! \(expense?.name ?? "No Expense")")
    }
}

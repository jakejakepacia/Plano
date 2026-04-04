//
//  HomeView.swift
//  Plano
//
//  Created by Christien Jake Pacia on 4/4/26.
//
import SwiftUI
struct HomeView: View {
    @StateObject private var vm = HomeViewModel()
    @State private var showAddEvent = false
    @State private var selectedEvent: PlanoEvent?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(vm.events) { event in
                        NavigationLink {
                            EventDetailsView(event: event)
                                .toolbar(.hidden, for: .tabBar)
                        } label: {
                            EventCardView(event: event)
                        }
                        .buttonStyle(.plain) // removes default blue highlight
                        .padding(.horizontal)
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Events")
            .toolbar {
                Button {
                    showAddEvent = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showAddEvent) {
                NavigationStack {
                    AddEventView(vm: vm)
                }
            }
        }
    }
}

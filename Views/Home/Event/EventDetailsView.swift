import SwiftUI

struct EventDetailsView: View {
    let event: PlanoEvent
    

    var daysBefore: Int {
        Calendar.current.dateComponents([.day], from: Date(), to: event.startDate).day ?? 0
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                
                // MARK: Header Card
                VStack(spacing: 8) {
                    HStack {
                        Image(systemName: "calendar")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text("\(daysBefore)")
                                .font(.title)
                                .bold()
                            Text("days before")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                    }
                }
                .cardStyle()
                
                
                // MARK: Budget Card
                NavigationLink(destination: BudgetView(event: event)) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Budget")
                            .font(.headline)
                        
                        Text("₱\(String(format: "%.2f", fmaxf(0.01, Float(event.budget))))")
                            .font(.title2)
                            .bold()
                        
                        ProgressView(value: 0.6)
                            .progressViewStyle(.linear)
                            .tint(.blue)
                            .frame(height: 8)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                    }
                    .cardStyle()
                }
                .buttonStyle(.plain)
                
                // MARK: Task Card
                NavigationLink(destination: BudgetView(event: event)) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Task")
                            .font(.headline)
                        
                        HStack{
                            Text("0 / 10 task")
                                .font(.subheadline)
                            
                            Spacer()
                        }
                      
                    }
                    .cardStyle()
                }
                .buttonStyle(.plain)
                
                
               
            }
            .padding()
        }
        .navigationTitle(event.name)
        .background(Color(.systemGroupedBackground))
    }
}

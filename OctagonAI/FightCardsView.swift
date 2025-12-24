import SwiftUI

struct FightCardsView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Fixed header
                VStack(spacing: 8) {
                    Text("Upcoming Fights")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                .padding(.top, 70) // Adjust to match FightersView
                .padding(.horizontal)
                .padding(.bottom, 8)
                .shadow(radius: 3)
                .zIndex(1)

                // Scrollable content
                ScrollView {
                    VStack(spacing: 20) {
                        ForEach(MockData.events) { event in
                            NavigationLink {
                                EventDetailView(event: event)
                            } label: {
                                FightCardView(event: event)
                            }
                        }
                    }
                    .padding()
                }
                .background(Color(hex: "212121"))
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

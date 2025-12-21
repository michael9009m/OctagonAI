import SwiftUI

struct FightCardsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    // Upcoming Fights title
                    Text("Upcoming Fights")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white) // plain white
                        .padding(.top, 20)

                    // Event cards
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
            .background(Color(hex: "212121")) //MAIN BACKGROUND OF UPCOMING CARDS TAB
        }
    }
}

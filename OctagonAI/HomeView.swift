import SwiftUI
import FirebaseAuth

struct HomeView: View {
    @ObservedObject var authView: AuthView
    @State private var selectedTab: Int = 0

    var body: some View {
        ZStack {
            Color(hex: "292929")
                .ignoresSafeArea()

            VStack(spacing: 0) {
                // Main content area
                Group {
                    switch selectedTab {
                    case 0: FightCardsView()
                    case 1: FightersView()
                    case 2: ParlayView()
                    case 3: SettingsView(authView: authView)
                    default: FightCardsView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                // Custom bottom navigation bar
                HStack {
                    navButton(icon: "calendar", text: "Fight Cards", tag: 0)
                    navButton(icon: "person.3", text: "Fighters", tag: 1)
                    navButton(icon: "doc.text", text: "Parlay", tag: 2)
                    navButton(icon: "gear", text: "Settings", tag: 3)
                }
                .padding(.vertical, 10)
                .background(Color(hex: "1F1F1F"))
            }
        }
    }

    // Navigation button helper
    func navButton(icon: String, text: String, tag: Int) -> some View {
        Button {
            selectedTab = tag
        } label: {
            VStack {
                Image(systemName: icon)
                    .foregroundColor(selectedTab == tag ? .white : .gray)
                Text(text)
                    .font(.caption)
                    .foregroundColor(selectedTab == tag ? .white : .gray)
            }
            .frame(maxWidth: .infinity)
        }
    }
}




#Preview {
    HomeView(authView: AuthView())
}

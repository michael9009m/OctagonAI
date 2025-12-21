import SwiftUI

struct ContentView: View {

    @StateObject private var authView = AuthView()

    var body: some View {
        NavigationStack {
            if authView.user != nil {
                HomeView(authView: authView)
            } else {
                SignUpView(authView: authView)
            }
        }
    }
}

#Preview {
    ContentView()
}

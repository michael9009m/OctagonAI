import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Color(hex: "292929")
                .ignoresSafeArea()

            Text("Log in")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}


#Preview {
    LoginView()
}

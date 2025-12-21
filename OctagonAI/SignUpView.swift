import SwiftUI
import FirebaseAuth

struct SignUpView: View {

    @ObservedObject var authView: AuthView

    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            Color(hex: "292929")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .font(.largeTitle)

                TextField("", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }

                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)

                SecureField("", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }

                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)

                if let error = authView.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                }

                Button {
                    authView.signUp(email: email, password: password)
                } label: {
                    Text("Sign Up")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.blue)
                        )
                }
                .padding(.top, 40)

                Button {
                    authView.signIn(email: email, password: password)
                } label: {
                    Text("Already have an account? Log in")
                        .bold()
                        .foregroundColor(.white)
                }
            }
            .frame(width: 350)
        }
    }
}

#Preview {
    SignUpView(authView: AuthView())
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

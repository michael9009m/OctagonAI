//
//  SettingsView.swift
//  OctagonAI
//
//  Created by Michael Martinez on 12/21/25.
//
import SwiftUI

struct SettingsView: View {
    @ObservedObject var authView: AuthView
    var body: some View {
        ZStack {
            Color(hex: "292929").ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Settings").foregroundColor(.white).font(.largeTitle)
                Button("Favorites") {
                    // TODO: implement favorite fighters
                }
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.orange))
                Button("Sign Out") {
                    authView.signOut()
                }
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
            }
        }
    }
}

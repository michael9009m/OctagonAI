//
//  FightersView.swift
//  OctagonAI
//
//  Created by Michael Martinez on 12/21/25.
//

import SwiftUI


struct FightersView: View {
    var body: some View {
        ZStack {
            Color(hex: "292929").ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Fighters").foregroundColor(.white).font(.largeTitle)
                Button("Compare Fighters") {
                    // TODO: Navigate to CompareView
                }
                .foregroundColor(.white)
                .frame(width: 200, height: 40)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
            }
        }
    }
}


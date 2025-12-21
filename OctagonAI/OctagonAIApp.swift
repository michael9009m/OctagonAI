//
//  OctagonAIApp.swift
//  OctagonAI
//
//  Created by Michael Martinez on 12/16/25.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct OctagonAIApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

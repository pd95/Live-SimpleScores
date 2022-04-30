//
//  SimpleScoresApp.swift
//  SimpleScores
//
//  Created by Philipp on 30.04.22.
//

import SwiftUI

@main
struct SimpleScoresApp: App {
    @StateObject private var model = ViewModel()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(model: model)
            }
            .navigationViewStyle(.stack)
            .preferredColorScheme(.dark)
        }
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .background {
                model.save()
            }
        }
    }
}

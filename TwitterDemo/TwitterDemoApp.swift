//
//  TwitterDemoApp.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/14/22.
//

import SwiftUI
import Firebase

@main
struct TwitterDemoApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                ContentView()
                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}

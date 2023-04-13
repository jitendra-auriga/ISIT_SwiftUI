//
//  ISIT_SwiftUIApp.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//

import SwiftUI

@main
struct ISIT_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Login()
            }
            .navigationBarHidden(true)
        }
    }
}

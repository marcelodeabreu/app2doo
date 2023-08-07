//
//  app2dooApp.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//

import FirebaseCore
import SwiftUI

@main
struct app2dooApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

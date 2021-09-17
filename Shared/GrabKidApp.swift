//
//  GrabKidApp.swift
//  Shared
//
//  Created by Peter Guo on 17/9/21.
//

import SwiftUI

@main
struct GrabKidApp: App {

    @StateObject var global = Global()
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            TopLogoBanner()
                .environmentObject(viewRouter)
            EntryParentView()
                .environmentObject(global)
                .environmentObject(viewRouter)
        }
    }
}

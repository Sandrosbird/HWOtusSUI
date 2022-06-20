//
//  HWOtusSUIApp.swift
//  HWOtusSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

@main
struct HWOtusSUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(SecondScreenListViewModel())
				.environmentObject(TabsRouter.shared)
        }
    }
}

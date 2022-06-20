//
//  TabsRouter.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

final class TabsRouter: ObservableObject {
	static let shared = TabsRouter()

	@Published var selectedTab: Int = 0
}



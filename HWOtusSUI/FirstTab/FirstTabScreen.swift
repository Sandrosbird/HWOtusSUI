//
//  FirstTabScreen.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

struct FirstTabScreen: View {

	@Binding var tabSelection: Int

    var body: some View {
//		Для работы процесса, описанного в комментариях в ContentView
//		VStack {
//		NavigationLink {
//			SecondTabScreen()
//		} label: {
//			Text("Open second tab screen")
//		}
//		NavigationLink {
//			ElementScreen(title: "Первый элемент", image: Image(systemName: "sun.max.fill"))
//		} label: {
//			Text("Open second tab's third element screen")
//		}
		Button {
			moveToSecondTab()
		} label: {
			Text("Open second tab screen")
		}
	}
//		} // VStack


	private func moveToSecondTab() {
		tabSelection = 1
	}
}

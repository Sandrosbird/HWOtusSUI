//
//  ContentView.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

struct ContentView: View {
	@EnvironmentObject var router: TabsRouter

    var body: some View {
//		NavigationView {
//		если обернуть все в NavigationView - то получается сделать
//		переход на конкретный элемент List'a во втором табе,
//		Но так ломается верстка второго экрана (либо экран получается в "рамке" относительно экрана девайса.
//		Если можно, прокомментируйте этот момент на проверке ДЗ.
			TabView(selection: $router.selectedTab) {
				FirstTabScreen(tabSelection: $router.selectedTab)
					.tag(0)
					.padding()
					.tabItem {
						Label("First tab", systemImage: "figure.walk")
					}

				SecondTabScreen()
					.tag(1)
					.padding()
					.tabItem {
						Label("Second tab", systemImage: "figure.wave")
					}

				ThirdTabScreen()
					.tag(2)
					.padding()
					.tabItem {
						Label("Third tab", systemImage: "figure.stand")
					}
			}

//		} //NavigationView
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

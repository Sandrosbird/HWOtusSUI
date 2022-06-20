//
//  SecondTabScreen.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

struct SecondTabScreen: View {
	@EnvironmentObject var router: TabsRouter

	var body: some View {
		NavigationView {
			SecondScreenListView()
				.navigationTitle("Second tab")
		}
		.frame(width: UIScreen.main.bounds.width,
			   height: UIScreen.main.bounds.height,
			   alignment: .center) // растягивает NavigationView на весь экран,
								   // иначе - получается серый прямоугольник внутри родительской вью таба
	}
}

struct SecondScreenListView: View {

	@StateObject var viewModel: SecondScreenListViewModel = .init()	

	var body: some View {
			List {
				ForEach(viewModel.elementsList) { element in
					NavigationLink {
						ElementScreen(title: element.name, image: element.image)
					} label: {
						Text("\(element.name)")
					}
				}
			}
	}
}

final class SecondScreenListViewModel: ObservableObject {

	@Published private(set) var elementsList = [
		ListItem(name: "Первый элемент", image: Image(systemName: "moon.fill")),
		ListItem(name: "Второй элемент", image: Image(systemName: "sunrise.fill")),
		ListItem(name: "Третий элемент", image: Image(systemName: "sun.max.fill")),
		ListItem(name: "Четвёртый элемент", image: Image(systemName: "sunset.fill")),
		ListItem(name: "Пятый элемент", image: Image(systemName: "cloud.fill")),
		ListItem(name: "Шестой элемент", image: Image(systemName: "cloud.rain.fill"))
	]
}

struct ListItem: Identifiable {
	let name: String
	let image: Image

	let id = UUID()
}


struct SecondTabScreen_Previews: PreviewProvider {
	static var previews: some View {
		SecondTabScreen()
	}
}

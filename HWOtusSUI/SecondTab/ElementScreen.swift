//
//  ElementsScreen.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

struct ElementScreen: View {

	var title: String
	var image: Image

    var body: some View {
		VStack {
			Text("\(title)")
			image
				.font(.system(size: 250))
			Spacer()
		}
    }
}

struct ElementScreen_Previews: PreviewProvider {
    static var previews: some View {
		ElementScreen(title: "preview title", image: Image.init(systemName: "figure.wave"))
    }
}

//
//  ThirdTabScreen.swift
//  HWSUI
//
//  Created by Emil Meshcheryakov on 20.06.2022.
//

import SwiftUI

struct ThirdTabScreen: View {
	@Environment(\.presentationMode) var presentationMode
	@State var shouldShow: Bool = false

    var body: some View {
		Button {
			showModal()
		} label: {
			Text("Show modal")
		}
		.sheet(isPresented: $shouldShow) {
			Button {
				showModal()
			} label: {
				Text("Dissmiss")
			}
		}
    }

	private func showModal() {
		shouldShow.toggle()
	}
}

struct ThirdTabScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabScreen()
    }
}

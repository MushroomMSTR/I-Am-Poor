//
//  ContentView.swift
//  I Am Poor
//
//  Created by MacBook Air on 03.05.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var isGold = false
	
	var body: some View {
		VStack {
			Text(isGold ? "I am Rich" : "I am Poor")
				.font(.largeTitle)
				.fontWeight(.regular)
				.foregroundColor(isGold ? Color.green : Color.gray)
				.padding(.all)
			Image(isGold ? "gold" : "coal")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.onTapGesture {
					isGold.toggle()
				}
			Text(isGold ? "Gold" : "Coal")
				.font(.body)
				.fontWeight(.light)
				.foregroundColor(isGold ? Color.green : Color.gray)
				.frame(width: 200, alignment: .trailing)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

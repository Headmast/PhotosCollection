//
//  StackUI.swift
//  PhotosCollection
//
//  Created by Kirill Klebanov on 27.07.2022.
//


import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            Text("Joshua Tree National Park")
                .font(.subheadline)
        }
    }
}

struct StackUI {
    func getViewController() -> UIViewController {
        return UIHostingController(rootView: ContentView())
    }
}

//
//  ContentView.swift
//  PINInSwiftUI
//
//  Created by Malli on 03/05/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack {
                PinView(viewModel: PinViewViewModel(numberOfPins: 6, isFocusOnStart: true)) { pinCode in
                    print("pin code received", pinCode)
                }
                Spacer()
                Text("created by Mallikarjuna")
                    .font(.subheadline)
                    .foregroundColor(.gray.opacity(0.4))
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .top)
            .navigationTitle("SwiftUI PinView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


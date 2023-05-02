//
//  RoundedBorderModifier.swift
//  PINInSwiftUI
// 
//  Created by Malli on 03/05/23

import SwiftUI

struct RoundedBorderModifier: ViewModifier {
    var borderColor = Color.gray
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 19, leading: 18, bottom: 19, trailing: 18))
            .foregroundColor(.white)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: 10.0)
                    .stroke(borderColor)
            )
    }
}

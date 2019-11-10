//
//  Login.swift
//  play
//
//  Created by Eric Passmore on 11/9/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentation
    let heightFactor: CGFloat = 0.3
    let message: String
    
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Text(self.message)
                Button("Dismiss2") {
                    self.presentation.wrappedValue.dismiss()
                }
            }.frame(width: geometry.size.width,
                    height: (UIScreen.main.bounds.height * self.heightFactor))
            .background(RoundedRectangle(cornerRadius: 20)
                        .fill(Color(UIColor.mwhite))
                        )
            .border(Color(UIColor.grey))
        }
    }
}

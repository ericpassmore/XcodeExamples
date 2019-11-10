//
//  ToastWrapperView.swift
//  play
//
//  Created by Eric Passmore on 11/10/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import SwiftUI

struct DialogWrapperView<Presenting>: View where Presenting: View {

    /// The binding that decides the appropriate drawing in the body.
    @Binding var isShowing: Bool
    /// The view that will be "presenting" this toast
    let presenting: () -> Presenting
    /// The text to show
    let view: LoginView

    var body: some View {
        // GeometryReader creates the size
        GeometryReader { geometry in
            // stack views on each other
            ZStack(alignment: .center) {

                // blur because we can
                self.presenting()
                    .blur(radius: self.isShowing ? 1 : 0)

                VStack {
                    self.view
                }
                .frame(width: geometry.size.width * 0.8,
                       height: geometry.size.height * 0.4 )
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .transition(.slide)
                .opacity(self.isShowing ? 1 : 0)
            }

        }

    }

}

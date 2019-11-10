//
//  DashboardView.swift
//  play
//
//  Created by Eric Passmore on 11/9/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: ContentView()) {
                Text("dashboard".localized())
                    .font(.title)
                    .foregroundColor(Color(UIColor.navBlack))
                    .padding(.bottom, 32)
            }
        }
        .navigationBarTitle(Text("dashboard".localized()), displayMode: .inline)
        .navigationBarHidden(true)
    }
}
struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

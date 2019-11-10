//
//  Login.swift
//  play
//
//  Created by Eric Passmore on 11/9/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var password: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
            Text("login".localized())
                .font(.title)
                .foregroundColor(Color(UIColor.navBlack))
                .padding(.bottom, 32)
                .padding(.leading, 32)
                Button(action: {}) {
                    Text("X")
                }.padding(.leading, 16)
            }
            HStack {
                VStack(alignment: .leading) {
                    Text("email".localized(tableName: "Registration"))
                        .font(.headline)
                        .frame(maxHeight: .infinity)
                        .foregroundColor(Color(UIColor.navBlack))
                        .padding(.bottom, 4)
                    Text("password".localized(tableName: "Registration"))
                        .font(.headline)
                        .frame(maxHeight: .infinity)
                        .foregroundColor(Color(UIColor.navBlack))
                        .padding(.bottom, 4)
                }
            }
            VStack(alignment: .leading) {
                TextField("email_suggested_text".localized(tableName: "Registration"),
                          text: $email)
                    .padding(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("password_suggested_text".localized(tableName: "Registration"),
                          text: $password)
                    .padding(8)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

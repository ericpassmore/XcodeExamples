//
//  ContentView.swift
//  play
//
//  Created by Eric Passmore on 11/8/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var displayName: String = ""
    @State private var showLoginModal = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("registration".localized(tableName: "Registration"))
                    .font(.title)
                    .foregroundColor(Color(UIColor.navBlack))
                    .padding(.bottom, 32)
                    .padding(.leading, 32)
                
                HStack() {
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
                        Text("name".localized(tableName: "Registration"))
                            .font(.headline)
                            .frame(maxHeight: .infinity)
                            .foregroundColor(Color(UIColor.navBlack))
                            .padding(.bottom, 4)
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
                        TextField("name_suggested_text".localized(tableName: "Registration"),
                                  text: $displayName)
                            .padding(8)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 32)
                .fixedSize(horizontal: false, vertical: true)
                HStack() {
                    NavigationLink(destination: DashboardView()) {
                        Text("register_button".localized(tableName: "Registration"))
                            .foregroundColor(Color(UIColor.mwhite))
                            .padding()
                            .background(Color(UIColor.accent))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    Button(action: {self.showLoginModal = true}) {
                        Text("login_button".localized(tableName: "Registration"))
                            .foregroundColor(Color(UIColor.mwhite))
                            .padding()
                            .background(Color(UIColor.accent))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }.padding(.leading, 16)
                    .sheet(isPresented: $showLoginModal, onDismiss: {
                        print(self.showLoginModal)
                    }) {
                        LoginView(message: "This is Modal View2")
                    }
                }.padding(.leading)
            }
        }
        .navigationBarTitle(Text("registration".localized(tableName: "Registration")), displayMode: .inline)
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
    
    var body: some View {
        VStack() {
            Text("Registration")
                .font(.title)
                .foregroundColor(Color(red: 33/255, green: 33/255, blue: 33/255))
                .padding(.bottom, 32)
            
            HStack() {
                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.headline)
                        .frame(maxHeight: .infinity)
                        .padding(.bottom, 4)
                    Text("Password")
                        .font(.headline)
                        .frame(maxHeight: .infinity)
                        .padding(.bottom, 4)
                    Text("Name")
                        .font(.headline)
                        .frame(maxHeight: .infinity)
                        .padding(.bottom, 4)
                }
                VStack(alignment: .leading) {
                    TextField("name@provider.com", text: $email)
                        .padding(8)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("secret", text: $password)
                        .padding(8)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Cool Name", text: $displayName)
                        .padding(8)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 32)
            .fixedSize(horizontal: false, vertical: true)
            HStack() {
                Group {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Register")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }.padding(.leading)
                Group {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }.padding(.leading)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

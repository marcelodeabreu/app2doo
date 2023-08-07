//
//  LoginView.swift
//  app2doo
//
//  Created by Marcelo de Abreu on 24/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // HEADER
                HeaderView(title: "2DOO", subtitle: "Keep working!")
                    .padding()
                
                // LOGIN FORM
                
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("E-mail Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    A2DButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                }
                
                // CREATE ACCOUNT
                VStack {
                    Text("Don't have an account?")
                    
                    NavigationLink("Register Here!", destination: RegisterView())
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

////
////  AppleSignUp.swift
////  Podcasters
////
////  Created by Renad Majed on 06/11/1444 AH.
////
//
//import AuthenticationServices
//import SwiftUI
//struct AppleSignUp : View {
//
//    @Environment (\.colorScheme) var colorScheme
//    @AppStorage ("email") var email: String = ""
//    @AppStorage ("firstName") var firstName: String
//    @AppStorage("lastName") var lastName: String = ""
//    @AppStorage ("userId") var userId: String = ""
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                SignInWithAppleButton(continue) { request in
//                    request.requestedScopes = [.email, .fullName]
//                } onCompletion: { result in
//                    switch result {
//                    case .success(let auth):
//                        switch auth.credential {
//                        case let credential as ASAuthorizationAppleIDCredential:
//
//                            // User Id
//                            let userId = credential.user
//                            // User Info
//                            let email = credential.email
//                            let firstName = credential.fullName ?? .givenName
//                            let lastName = credential.fullName ?? .familName
//                            self.email = email ?? ""
//                            self.userId = userId
//                            self.firstName = firstName ??
//                            self.lastName = lastName ??
//                        default:
//                            break
//                        }
//
//                    case .failure(let error):
//                        print(error)
//
//                    }
//                        .signInWithAppleButtonStyle(
//                            colorScheme == .dark ? white : .black
//                        )
//                        .frame (height: 50)
//                        .padding ()
//                        .cornerRadius (8)
//                }
//                .navigationTitle("Sign In")
//            }
//        }
//    }
//}
//struct AppleSignUp_Previews: PreviewProvider {
//    static var previews: some View {
//        AppleSignUp()
//    }
//}

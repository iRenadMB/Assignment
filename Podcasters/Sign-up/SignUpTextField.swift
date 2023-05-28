
import SwiftUI

struct SignUpTextField: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Name")
                TextField("Enter your name", text: $username)
                    .padding()
                    .overlay(RoundedRectangle(
                        cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .frame(width: 350)
                    .onSubmit {
                        guard username.isEmpty == false && password.isEmpty == false else { return }
                        print("Authenticating…") }
                
                Text("Email")
                TextField("Enter your email", text: $email)
                    .padding()
                    .overlay(RoundedRectangle(
                        cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .frame(width: 350)
                    .onSubmit {
                        guard email.isEmpty == false && password.isEmpty == false else { return }
                        print("Authenticating…") }
                
                Text("Password")
                SecureField("Enter your password", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(
                        cornerRadius: 10.0).strokeBorder(Color.gray, style: StrokeStyle(lineWidth: 1.0)))
                    .frame(width: 350)
                    .onSubmit {
                        guard password.isEmpty == false && password.isEmpty == false else { return }
                        print("Authenticating…") }

            }
        }
    }
}


struct SignUpTextField_Previews: PreviewProvider {
    static var previews: some View {
        SignUpTextField()
    }
}

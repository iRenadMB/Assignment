
import SwiftUI

struct LogInTextField: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 15) {
                
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


struct LogInTextField_Previews: PreviewProvider {
    static var previews: some View {
        LogInTextField()
    }
}

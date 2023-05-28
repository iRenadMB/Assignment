
import SwiftUI

struct ResetTextField: View {
    
    @State private var email = ""
    
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
                        guard email.isEmpty == false
                        else { return }
                        print("Authenticating…") }
            }
        }
    }
}


struct ResetTextField_Previews: PreviewProvider {
    static var previews: some View {
        ResetTextField()
    }
}

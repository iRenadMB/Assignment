
import SwiftUI

struct BeginningPrivacyText: View {
    
    var body: some View {
        
        VStack {
            
            Text("By continuing, you agree to our ")
            
            HStack {
                
                Button(action: { })
                {
                    Text("Terms").underline()
                }
                
                Text("and")
                
                Button(action: { })
                {
                    Text("Privacy Policy").underline()
                }
            }
        } .multilineTextAlignment(.center)
            .foregroundColor(.black)
            .font(.subheadline)
    }
}

struct BeginningPrivacyText_Previews: PreviewProvider {
    static var previews: some View {
        BeginningPrivacyText()
    }
}

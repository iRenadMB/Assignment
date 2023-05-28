
import SwiftUI

struct ResetIcon: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                Spacer()
                
                HStack {
                    Group {
                        Text("Don't have an account?")
                        
                        Button(action: {
                            showFullScreen.toggle()
                        }) {
                            Text("Sign up.")
                                .underline()
                                .foregroundColor(.black)
                        }
                    }
                }.multilineTextAlignment(.center)
            }
        }
        .fullScreenCover(isPresented: $showFullScreen) {
            SignUpPage() }
    }
}

struct ResetIcon_Previews: PreviewProvider {
    static var previews: some View {
        ResetIcon()
    }
}

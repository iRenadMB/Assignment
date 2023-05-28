
import SwiftUI

struct SignUpIcon: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 150) {
                
                HStack(spacing : 20) {
                    
                    Image("facebook")
                        .resizable()
                        .frame( width: 30, height: 30)
                    
                    Image("google")
                        .resizable()
                        .frame( width: 35, height: 39)
                        .padding(.horizontal, 30)
                    
                    Image("apple")
                        .resizable()
                        .frame( width: 25, height: 30)
                }
                
                HStack {
                    Group {
                        Text("Already have an account?")
                        
                        Button(action: {
                            showFullScreen.toggle()
                        }) {
                            Text("Log in.")
                                .underline()
                                .foregroundColor(.black)
                        }
                    }
                }
                .multilineTextAlignment(.center)
            }
        }.fullScreenCover(isPresented: $showFullScreen) {
            LogInPage() }
    }
}

struct SignUpIcon_Previews: PreviewProvider {
    static var previews: some View {
        SignUpIcon()
    }
}


import SwiftUI

struct LogInIcon: View {
    
    @State var showFullScreen1: Bool = false
    @State var showFullScreen2: Bool = false

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
                
                VStack(spacing: 18) {

                    HStack {
                        Group {
                            Text("Forgot your password?")
                            
                            Button(action: {
                                showFullScreen1.toggle()
                            }) {
                                Text("Reset it.")
                                    .underline()
                                    .foregroundColor(.black)
                            }
                        }
                    }.multilineTextAlignment(.center)
                    
                    HStack {
                        Group {
                            Text("Don't have an account?")
                            
                            Button(action: {
                                showFullScreen2.toggle()
                            }) {
                                Text("Sign up.")
                                    .underline()
                                    .foregroundColor(.black)
                            }
                        }
                    }.multilineTextAlignment(.center)
                }.padding(.top, 80)
                
            }
        }.fullScreenCover(isPresented: $showFullScreen1) {
            ResetPage() }
        .fullScreenCover(isPresented: $showFullScreen2) {
            SignUpPage() }
    }
}

struct LogInIcon_Previews: PreviewProvider {
    static var previews: some View {
        LogInIcon()
    }
}

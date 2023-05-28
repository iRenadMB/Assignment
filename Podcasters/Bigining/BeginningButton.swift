
import SwiftUI

struct BeginningButton: View {
    
    @State var showFullScreen1: Bool = false
    @State var showFullScreen2: Bool = false
    @State var showFullScreen3: Bool = false
    @State private var size = 0.8
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                ZStack{
                    
                    Color("purple").edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 15){
                        Button(" Sign up with Apple", action: {
                            showFullScreen1.toggle()
                        })
                        .font(.headline)
                        .padding(16)
                        .frame(width: 330)
                        .padding(.horizontal, 16)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(30)
                        
                        Button("Log in", action: {
                            showFullScreen2.toggle()
                        })
                        .font(.headline)
                        .padding(14)
                        .frame(width: 330)
                        .padding(.horizontal, 16)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black, lineWidth: 1))
                        
                        Button("Sign up with email instead", action: {
                            showFullScreen3.toggle()
                        })
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .padding(20)
                        .frame(width: 330)
                        .padding(.horizontal, 16)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color("purple"), lineWidth: 1))
                        BeginningPrivacyText()
                            .padding(.top)
                    }
                }
            }
            .fullScreenCover(isPresented: $showFullScreen1) {
                ContentView() }
            .fullScreenCover(isPresented: $showFullScreen2) {
                LogInPage() }
            .fullScreenCover(isPresented: $showFullScreen3) {
                SignUpPage() }
        }
    }
}

struct BeginningButton_Previews: PreviewProvider {
    static var previews: some View {
        BeginningButton()
    }
}

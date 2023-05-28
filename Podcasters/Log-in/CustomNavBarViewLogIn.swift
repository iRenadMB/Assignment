
import SwiftUI

struct CustomNavBarViewLogIn: View {
    
    @State private var showBackButton: Bool = true
    @State var showFullScreen1: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            HStack {
                if showBackButton {
                    backLogInButton
                }
                
                Spacer()
                titleSectionLogIn
            }
            .padding()
            .accentColor(.black)
            .background(Color.white.ignoresSafeArea(edges: .top))
          
            }.fullScreenCover(isPresented: $showFullScreen1) {
                BeginningPage() }
        }
    }
    
    struct CustomNavBarViewLogIn_Previews: PreviewProvider {
        
        static var previews: some View {
            VStack(alignment: .leading) {
                CustomNavBarViewLogIn()
                Spacer()
                    .padding()
            }
        }
    }

extension CustomNavBarViewLogIn {
    
    private var backLogInButton: some View{
        
        NavigationLink(destination: BeginningPage()){
            
            Button(action: {
                showFullScreen1.toggle()
                
            }, label: {
                Image(systemName: "chevron.left")
            })
        }
    }
    private var titleSectionLogIn: some View{
        VStack(spacing: 4) {
            
            Text("Log in to an existing account")
                .font(.system(size: 25, weight: .heavy, design: .default))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 5)
        }
    }
}


import SwiftUI

struct CustomNavBarViewReset: View {
   
        @State private var showBackButton: Bool = true
        @State var showFullScreen: Bool = false
        
        var body: some View {
            
            NavigationStack {
                
                HStack {
                    if showBackButton {
                        backResetButton
                    }
                    
                    Spacer()
                    titleSectionReset
                }
                .padding()
                .accentColor(.black)
                .background(Color.white.ignoresSafeArea(edges: .top))
              
                }.fullScreenCover(isPresented: $showFullScreen) {
                    LogInPage() }
            }
        }
        
        struct CustomNavBarViewReset_Previews: PreviewProvider {
            
            static var previews: some View {
                VStack(alignment: .leading) {
                    CustomNavBarViewReset()
                    Spacer()
                        .padding()
                }
            }
        }

    extension CustomNavBarViewReset {
        
        private var backResetButton: some View{
            
            NavigationLink(destination: BeginningPage()){
                
                Button(action: {
                    showFullScreen.toggle()
                    
                }, label: {
                    Image(systemName: "chevron.left")
                })
            }
        }
        private var titleSectionReset: some View{
            VStack(spacing: 4) {
                
                Text("Reset your password")
                    .font(.system(size: 25, weight: .heavy, design: .default))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 50)
            }
        }
    }

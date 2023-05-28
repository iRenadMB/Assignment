
import SwiftUI

struct CustomNavBarView: View {
    
    @State private var showBackButton: Bool = true
    @State var showFullScreen1: Bool = false
    
    var body: some View {
        
        NavigationStack {
            
            HStack {
                if showBackButton {
                    backButton
                }
                Spacer()
                
                titleSection
            }
            .padding()
            .accentColor(.black)
            .background(Color.white.ignoresSafeArea(edges: .top))
            
        }.fullScreenCover(isPresented: $showFullScreen1) {
            BeginningPage() }
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            CustomNavBarView()
            Spacer()
        }
    }
}

extension CustomNavBarView {
    
    private var backButton: some View{
        
        NavigationLink(destination: BeginningPage()){
            
            Button(action: {
                showFullScreen1.toggle()
                
            }, label: {
                Image(systemName: "chevron.left")
            })
        }
    }
    
    private var titleSection: some View{
        VStack(spacing: 4) {
            
            Text("Sign up and get started on your own podcast!")
                .font(.system(size: 25, weight: .heavy, design: .default))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 20)
        }
    }
}

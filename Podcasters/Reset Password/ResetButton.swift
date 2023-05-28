
import SwiftUI

struct ResetButton: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Button("Reset Password", action: {
                    showFullScreen.toggle()
                })
                .font(.headline)
                .frame(width: 350, height: 55)
                .foregroundColor(.black)
                .background(Color("purple"))
                .cornerRadius(30)
                
                ResetIcon()
                    .padding(.top, 450)
            }
        }.fullScreenCover(isPresented: $showFullScreen) {
            Home() }
    }
}

struct ResetButton_Previews: PreviewProvider {
    static var previews: some View {
        ResetButton()
    }
}

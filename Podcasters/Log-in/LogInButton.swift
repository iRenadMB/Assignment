
import SwiftUI

struct LogInButton: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
                VStack {
                                    
                    Button("Next", action: {
                        showFullScreen.toggle()
                    })
                    .font(.headline)
                    .frame(width: 350, height: 55)
                    .foregroundColor(.black)
                    .background(Color("purple"))
                    .cornerRadius(30)
                                
                    ZStack {
                        
                        Divider()
                            .padding(.leading, 230)
                            .frame(maxWidth: .infinity)
                        
                        Text("or")
                        
                        Divider()
                            .padding(.trailing, 230)
                            .frame(maxWidth: .infinity)
      
                    }.bold()
                    
                    LogInIcon()

                }//.padding(.bottom, 300)
        }.fullScreenCover(isPresented: $showFullScreen) {
            Home() }
    }
}

struct LogInButton_Previews: PreviewProvider {
    static var previews: some View {
        LogInButton()
    }
}

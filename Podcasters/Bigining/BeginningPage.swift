
import SwiftUI

struct BeginningPage: View {
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                ZStack{
                    
                    Color("purple").edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 100){
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 330, height: 65)
                            .padding(.top, 250)
                        
                        BeginningButton()
                        
                    }
                }
            }
        }
    }
}


struct BeginningPage_Previews: PreviewProvider {
    static var previews: some View {
        BeginningPage()
    }
}

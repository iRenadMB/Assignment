
import SwiftUI

struct IconPage: View {
    
    @State private var isActive = false
    @State private var size = 0.5
    
    var body: some View {
        
        if isActive {
            BeginningPage()
            
        } else {
            
            GeometryReader { geometry in
                
                VStack {
                    
                    ZStack {
                        
                        Color("purple").edgesIgnoringSafeArea(.all)
                        
                        VStack(spacing: 5){
                            Image("logo")
                                .resizable()
                                .frame(width: 660, height: 130)
                                .frame (width: geometry.size.width * 1.9)
                                .frame (width: geometry.size.height * 0.5)
                            
                            
                        } .scaleEffect(size)
                    }.onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}


struct IconPage_Previews: PreviewProvider {
    static var previews: some View {
        IconPage()
    }
}


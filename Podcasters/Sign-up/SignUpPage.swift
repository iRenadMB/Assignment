
import SwiftUI

struct SignUpPage: View {
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView {
                
                VStack {
                    
                    CustomNavBarView()
                    
                    SignUpTextField()
                    
                    SignUpButton()
                        .padding(.top, 40)
                }
            }
        }
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}

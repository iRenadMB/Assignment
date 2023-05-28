
import SwiftUI

struct LogInPage: View {
    var body: some View {
        NavigationStack {
            
            ScrollView {
                
                VStack {

                    CustomNav()
                    Spacer()
                    
                    LogInTextField()
                    
                    LogInButton()
                        .padding(.top, 40)

                }
            }
        }
    }
}

struct LogInPage_Previews: PreviewProvider {
    static var previews: some View {
        LogInPage()
    }
}

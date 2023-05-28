
import SwiftUI

struct ResetPage: View {

        var body: some View {
            NavigationStack {
                
                ScrollView {
                    
                    VStack {

                        CustomNavView()
                        Spacer()
                        
                        ResetTextField()

                        ResetButton()
                            .padding(.top, 40)
                    }
                }
            }
        }
    }

    struct ResetPage_Previews: PreviewProvider {
        static var previews: some View {
            ResetPage()
        }
    }


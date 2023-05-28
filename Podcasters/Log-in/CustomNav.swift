
import SwiftUI

struct CustomNav: View {
    
    var body: some View {
        
        VStack(spacing: 0){
            CustomNavBarViewLogIn()
            Spacer()
        }
    }
}

struct CustomNav_Previews: PreviewProvider {
    static var previews: some View {
        CustomNav()
    }
}

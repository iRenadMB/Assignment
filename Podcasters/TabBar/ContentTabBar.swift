
import SwiftUI

struct ContentTabBar: View {
    
    var body: some View {

        Home()
            .preferredColorScheme(.light)
    }
}

struct ContentTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentTabBar()
    }
}

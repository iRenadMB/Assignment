
import SwiftUI

struct Analytics: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20){
                
                Image(systemName: "mic")
                    .resizable()
                    .frame(width: 20, height: 30)
                
                Text("Create an episode")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .fontWeight(.semibold)
                
                Text("Tell more people about your podcast. As soon as you get a few plays, we'll show your analytics here.")
                    .font(.system(size: 13, weight: .semibold, design: .default))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray)
                
                AnalyticsButton()
                    .padding(.top, 20)
                
            }.navigationTitle("Analytics")
                .padding(.bottom, 50)
        }
    }
}

struct Analytics_Previews: PreviewProvider {
    static var previews: some View {
        Analytics()
    }
}

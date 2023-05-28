
import SwiftUI

struct AnalyticsButton: View {
    
    @State var showFullScreen1: Bool = false
    @State var showFullScreen2: Bool = false
    @State private var size = 0.8
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            Button("Create", action: {
                showFullScreen1.toggle()
            })
            .font(.headline)
            .padding(17)
            .frame(width: 220)
            .padding(.horizontal, 18)
            .foregroundColor(.black)
            .background(Color("purple"))
            .cornerRadius(30)
            
            Button("Make a trailer", action: {
                showFullScreen2.toggle()
            })
            .font(.system(size: 15, weight: .bold, design: .default))
            .padding(20)
            .frame(width: 330)
            .padding(.horizontal, 16)
            .foregroundColor(.black)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 1))
        }
    }
}

struct AnalyticsButton_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsButton()
    }
}

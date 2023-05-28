
import SwiftUI

struct Waves: View {
    
    var body: some View {
        
        ZStack {

            Color("darkgray").edgesIgnoringSafeArea(.all)
            WaveForm(color: Color("gray").opacity(0.8), amplify: 60)
            WaveForm(color: Color("gray").opacity(0.6), amplify: 56)
            
        }.ignoresSafeArea(.all, edges: .bottom)
    }
}

struct Waves_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Waves()
    }
}

struct WaveForm: View {
    
    var color: Color
    var amplify: CGFloat
    
    var body: some View {
        
        TimelineView(.animation) { timeLine in
            
            Canvas {context,size in
                
                let timeNow = timeLine.date.timeIntervalSinceReferenceDate
                
                let angle = timeNow.remainder(dividingBy: 2)
                
                let offset = angle * size.width
                
                context.translateBy(x: offset, y: 0)
                
                context.fill(getPath(size: size), with: .color(color))
                context.translateBy(x: -size.width, y: 0)
                context.fill(getPath(size: size), with: .color(color))
                context.translateBy(x: size.width * 2, y: 0)
                context.fill(getPath(size: size), with: .color(color))
                
            }
        }
    }
    
    func getPath(size: CGSize) -> Path {
        
        return Path{path in
            
            let midHeigh = size.height / 2
            let width = size.width
            
            path.move(to: CGPoint(x: 0, y: midHeigh))
            
            path.addCurve(to: CGPoint(x: width, y: midHeigh),
                          control1:
                            CGPoint(x: width * 0.4, y: midHeigh + amplify),
                          control2:
                            CGPoint(x: width * 0.65, y: midHeigh - amplify))
            
            path.addLine(to: CGPoint(x: width, y: size.height))
            path.addLine(to: CGPoint(x: 0, y: size.height))
            
        }
    }
}

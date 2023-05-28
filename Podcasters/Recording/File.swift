//
//import SwiftUI
//
//struct File: View {
//    
//@ObservedObject var audio: AudioRecorder
//    
//var body: some View {
//    
//VStack {
//    
//    Button(action: {
//        
//        if audio.recording {
//            
//            audio.stopRecording()
//            
//        } else {
//            
//            audio.startRecording()
//        }
//        }, label: {
//            
//            Image(systemName: "mic.fill.badge.plus")
//                .resizable()
//                .scaledToFill()
//                .foregroundColor(audio.recording ? .red : .green)
//                .frame(width: 70, height: 70)
//        })
//        
//        Text (audio.recording ? "Recording..." : "Click to Record")
//            .font(.caption)
//            .bold()
//            .foregroundColor(audio.recording ? .green : .red)
//        
//    }
//           }
//           }
//           
//struct File_Previews: PreviewProvider {
//    static var previews: some View {
//        File(audio: AudioRecorder())
//    }
//}

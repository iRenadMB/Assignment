//
//import Foundation
//import SwiftUI
//import Combine
//import AVFoundation
//
//class AudioRecorder: ObservableObject {
//    
//    let objectWillChange = PassthroughSubject<AudioRecorder, Never>()
//    var audioRecorder: AVAudioRecorder!
//    
//    var recording = false {
//        
//        didSet {
//            objectWillChange.send(self)
//        }
//    }
//    
//    func startRecording() {
//        
//        let recodingSession = AVAudioSession.sharedInstance()
//        
//        do {
//            try recodingSession.setCategory(.playAndRecord, mode: .default)
//            try recodingSession.setActive(true)
//        } catch {
//            print ("Failed to set u recoding session")
//        }
//        
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateStyle = .medium
//        let docPath = FileManager.default.urls (for: .documentDirectory, in: .userDomainMask)[0]
//        let audioFileName = docPath.appendingPathComponent ("\(dateFormatter.string(from: Date())) Record.m4a")
//        
//        let settings = [
//            AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
//            AVSampleRateKey: 12000,
//            AVNumberOfChannelsKey: 1,
//            AVEncoderBitRateKey: AVAudioQuality.high.rawValue
//        ]
//        
//        do {
//            audioRecorder = try AVAudioRecorder(url: audioFileName, settings: settings)
//            audioRecorder.record()
//            recording = true
//        } catch {
//            print ("couldn't start recoording")
//        }
//    }
//    
//    func stopRecording() {
//        audioRecorder.stop()
//        recording = false
//    }
//}

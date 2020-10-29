//
//  AudioModel.swift
//  Litinerary
//
//  Created by Giusi Ferrigno on 29/10/2020.
//

import Foundation
import AVFoundation

// Play Audio
// nella view dobbiamo aggiungere
// playSound (sound:String, type: String)
//es. playSound (sound:"lettura1", type: "mp3")
// o così var body: some View {
//Button(action: {
//    self.isPlaying.toggle()
//    Sounds.playSounds(soundfile: "0.wav")

// }, label: {

 class Sounds {

   static var audioPlayer:AVAudioPlayer?

   static func playSounds(soundfile: String) {

       if let path = Bundle.main.path(forResource: soundfile, ofType: nil){

           do{

               audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
               audioPlayer?.prepareToPlay()
               audioPlayer?.play()

           }catch {
               print("Error")
           }
       }
    }
 }

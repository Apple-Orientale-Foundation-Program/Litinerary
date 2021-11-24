//
//  DetailView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 29/10/2020.
//

import SwiftUI
import AVFoundation

struct DetailView: View {
    
    @State var audioPlayer:AVAudioPlayer?
    //    @State var player : AVAudioPlayer!
    @State var isPlaying = false
    
    var stop: Stop
        
    var body: some View {
        
        ZStack{
            Image("newskyline2")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 336)
                .scaledToFit()
                .padding(.bottom, 550.0)
            
            VStack{
                HStack {
                    Text(stop.title)
                        .font(Font.custom("Raleway", size: 38))
                        .fontWeight(.bold)
                        .foregroundColor(Color("darkGray"))
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 20.0)
                    
//BOTTONE VECCHIO
//                    Button(action: {
//                        self.isPlaying.toggle()
//                            Sounds.playSounds( soundfile: stop.audio)
//
//                    }
                    
                    Button(action: {

                        if self.isPlaying {
                                self.isPlaying.toggle()
                                Sounds.playSounds( soundfile: stop.audio)
//                            provaA.toggle()
                            }
                            else {
                                self.isPlaying.toggle()    //funzione che pausa
                                Sounds.pauseSounds(soundfile: stop.audio)
//                                provaA.toggle()
                            }
                        }){Image(systemName: "speaker.wave.2.circle")
                        .font(Font.system(.largeTitle))                        }
                }
                
//                24/11/2021 grazie Manghia <3 <3 <3 <3 <3 nyoron nyoreron
                
                ScrollView{
                    VStack {
                        Text(stop.description)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .font(Font.custom("Raleway", size: 20))

                        Text(stop.content)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .font(Font.custom("Raleway", size: 20))
                        Text(stop.description2)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .font(Font.custom("Raleway", size: 20))
                        Text(stop.content2)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.leading)
                            .padding()
                            .font(Font.custom("Raleway", size: 20))
                        
                        
                    }
                }
                
            }
        }
    }
}
    
    
    //struct ModalView_Previews: PreviewProvider {
    //    static var previews: some View {
    //        ModalView()
    //    }


//    }


//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(stop: Stop())
//    }
//}
//}

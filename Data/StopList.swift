//
//  StopList.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 27/10/2020.
//

import Foundation
import UIKit

//in questo file vengono scritti tutti i dati da inserire nelle modali delle tappe

class AmicaGenialeStopList: Identifiable, ObservableObject {
    @Published var listOfStops: [Stop]
    init(listOfStops: [Stop])
    {
       self.listOfStops = listOfStops
    }
}

let stopData = AmicaGenialeStopList(
    listOfStops: [
        Stop(stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),
    ])

//class AndreuccioDaPerugiaStopList: Identifiable, ObservableObject {
//    @Published var listOfStops: [Stop]
//    init(listOfStops: [Stop])
//    {
//       self.listOfStops = listOfStops
//    }
//}
//sto cercando di creare una class per itinerario ma non so se va bene
//let stopData = AndreuccioDaPerugiaStopList(
//    listOfStops: [
//        Stop(stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),
//    ])

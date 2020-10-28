//
//  StopList.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 28/10/2020.
//

import Foundation
import MapKit
import UIKit

class StopList: Identifiable, ObservableObject {
    @Published var listOfStops: [Stop]
    init(listOfStops: [Stop])
    {
       self.listOfStops = listOfStops
    }
    
}
//let StopData = StopList(
//    listOfStops: [
//        mezzocannoneAG(stopTitle: "Mezzocannone", stopDescription: "blabla", stopLatitude: 40.844877, stopLongitude: 14.257189, stopAudio: "andreuccio"),
//    ])
//
//        mezzocannoneAG (stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        danteDescartes (stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
//        liceoVittorio (stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
//        portAlba (stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMunicipio (stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
//        viaChiaia (stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMartiri (stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
//        lungomareCaracciolo (stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),
//        mezzocannoneAG (stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        danteDescartes (stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
//        liceoVittorio (stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
//        portAlba (stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMunicipio (stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
//        viaChiaia (stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMartiri (stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
//        lungomareCaracciolo (stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),
//        mezzocannoneAG (stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        danteDescartes (stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
//        liceoVittorio (stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
//        portAlba (stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMunicipio (stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
//        viaChiaia (stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMartiri (stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
//        lungomareCaracciolo (stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),
//        mezzocannoneAG (stopTitle: "Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        danteDescartes (stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x"),
//        liceoVittorio (stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x"),
//        portAlba (stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMunicipio (stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
//        viaChiaia (stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
//        piazzaMartiri (stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
//        lungomareCaracciolo (stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x"),

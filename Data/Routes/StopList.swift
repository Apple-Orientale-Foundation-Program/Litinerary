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
//        mezzocannoneAG(stopTitle: "Mezzocannone", stopDescription: "blabla", stopAudio: "audio", stopLatitude: 40.844877, stopLongitude: 14.257189),
//        danteDescartes (stopTitle: "Libreria Dante & Descartes", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        liceoVittorio (stopTitle: "Liceo Vittorio Emanuele II", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        portAlba (stopTitle: "Port'Alba", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        piazzaMunicipio (stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        viaChiaia (stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        piazzaMartiri (stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        lungomareCaracciolo (stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00)
//        piazzaMercato(stopTitle: "Piazza Mercato", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        quartiereMalpertugio(stopTitle: "Quartiere Malpertugio (oggi via Medina)", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        ruaCatalana(stopTitle: "Rua Catalana", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        duomo(stopTitle: "Duomo", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        libreriaColonnese(stopTitle: "Libreria Antiquaria Colonnese", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        federicoII(stopTitle: "Università Federico II di Napoli", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        mezzocannoneRC(stopTitle: "Via Mezzocannone", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        sanDomenico(stopTitle: "San Domenico", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        viaRoma(stopTitle: "Via Roma", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        castelDellOvo(stopTitle: "Castel dell'Ovo", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        sanCarlo(stopTitle: "San Carlo", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        piazzaTriesteTrento(stopTitle: "Piazza Trieste e Trento", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00),
//        gambrinus(stopTitle: "Gambrinus", stopDescription: "blablabla", stopAudio: "x", stopLatitude: 00, stopLongitude: 00)
//])


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

let AmicaGenialeStopData = AmicaGenialeStopList(
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

class AndreuccioDaPerugiaStopList: Identifiable, ObservableObject {
    @Published var listOfStops: [Stop]
    init(listOfStops: [Stop])
    {
       self.listOfStops = listOfStops
    }
}
let AndreuccioDaPerugiastopData = AndreuccioDaPerugiaStopList(
    listOfStops: [
        Stop(stopTitle: "Piazza Mercato", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Quartiere Malpertugio (oggi via Medina)", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Rua Catalana", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Duomo", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Piazza Municipio", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Via Chiaia", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Piazza dei Martiri", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Lungomare Caracciolo", stopDescription: "blablabla", stopAudio: "x")
    ])

class RenatoCaccioppoliStopList: Identifiable, ObservableObject {
    @Published var listOfStops: [Stop]
    init(listOfStops: [Stop])
    {
       self.listOfStops = listOfStops
    }
}
let RenatoCaccioppolistopData = RenatoCaccioppoliStopList(
    listOfStops: [
        Stop(stopTitle: "Libreria Antiquaria Colonnese", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Università Federico II di Napoli", stopDescription: "blablabla", stopAudio: "x"),
//        bisogna scegliere come strutturare questo itinerario per quanto riguarda le location (singole o multiple per descrizione?)
//        Stop(stopTitle: "Via Mezzocannone", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "San Domenico", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Via Roma", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Castel dell'Ovo", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "San Carlo", stopDescription: "blablabla", stopAudio: "x"),
//        Stop(stopTitle: "Piazza Trieste e Trento", stopDescription: "blablabla", stopAudio: "x"),
        Stop(stopTitle: "Gambrinus", stopDescription: "blablabla", stopAudio: "x")
    ])

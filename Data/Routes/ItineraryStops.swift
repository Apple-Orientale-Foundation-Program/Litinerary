//
//  ItineraryStops.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 28/10/2020.
//

import Foundation
import MapKit

struct Pin{
  var lat: Double
  var long: Double
  var title: String

  func coord()->CLLocationCoordinate2D{
    return CLLocationCoordinate2D(latitude: self.lat, longitude: self.long)
  }
}

var AmicaGeniale = [
  Pin(lat: 40.844877, long: 14.257189, title: "Via Mezzocannone"),
  Pin(lat: 40.846206, long: 14.256281, title: "Libreria Dante & Descartes"),
  Pin(lat: 40.848586, long: 14.252477, title: "Liceo Vittorio Emanuele II"),
  Pin(lat: 40.849539, long: 14.250640, title: "Port'Alba"),
  Pin(lat: 40.840177, long: 14.252188, title: "Piazza Municipio"),
  Pin(lat: 40.836637, long: 14.246969, title: "Via Chiaia"),
  Pin(lat: 40.8342492, long: 14.2418517, title: "Piazza dei Martiri"),
  Pin(lat: 40.8318695, long: 14.2347563, title: "Lungomare Caracciolo")
]


var RenatoCaccioppoli = [
    Pin(lat: 40.8454113, long: 14.2555455, title: "Università degli Studi di Napoli Federico II"),
    Pin(lat: 40.8483962, long: 14.2552884, title: "Piazza San Domenico Maggiore"),
    Pin(lat: 40.8496368, long: 14.2507409, title: "Libreria Antiquaria Colonnese"),
    Pin(lat: 40.837819, long: 14.2418831, title: "Gran Caffè Gambrinus"),
    Pin(lat: 40.8386956, long: 14.242441, title: "Teatro San Carlo"),
    Pin(lat: 40.8340526, long: 14.241411, title: "Castel dell'Ovo")
]


var AndreuccioPerugia = [
  Pin(lat: 40.8471205, long: 14.2581617, title: "Piazza Mercato"),
  Pin(lat: 40.8430241, long: 14.2526411, title: "Quartiere Malpertugio (oggi via Medina)"),
  Pin(lat: 40.842183, long: 14.2539457, title: "Rua Catalana"),
  Pin(lat: 40.8525582, long: 14.259689, title: "Duomo")
]

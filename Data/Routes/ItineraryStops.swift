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
    var subtitle: String

  func coord()->CLLocationCoordinate2D{
    return CLLocationCoordinate2D(latitude: self.lat, longitude: self.long)
  }
}

var AmicaGeniale = [
    Pin(lat: 40.844877, long: 14.257189, title: "Via Mezzocannone", subtitle: "Tappa 1"),
  Pin(lat: 40.846206, long: 14.256281, title: "Libreria Dante & Descartes", subtitle: "Tappa 2"),
  Pin(lat: 40.848586, long: 14.252477, title: "Liceo Vittorio Emanuele II", subtitle: "Tappa 3"),
  Pin(lat: 40.849539, long: 14.250640, title: "Port'Alba", subtitle: "Tappa 4"),
  Pin(lat: 40.840177, long: 14.252188, title: "Piazza Municipio", subtitle: "Tappa 5"),
  Pin(lat: 40.836637, long: 14.246969, title: "Via Chiaia", subtitle: "Tappa 6"),
    Pin(lat: 40.8342492, long: 14.2418517, title: "Piazza dei Martiri", subtitle: "Tappa 7"),
  Pin(lat: 40.8318695, long: 14.2347563, title: "Lungomare Caracciolo", subtitle: "Tappa 8")
]


var RenatoCaccioppoli = [
    Pin(lat: 40.8454113, long: 14.2555455, title: "Università degli Studi di Napoli Federico II", subtitle: "Tappa 1"),
    Pin(lat: 40.8483962, long: 14.2552884, title: "Piazza San Domenico Maggiore", subtitle: "Tappa 2"),
    Pin(lat: 40.8496368, long: 14.2507409, title: "Libreria Antiquaria Colonnese", subtitle: "Tappa 3"),
    Pin(lat: 40.837819, long: 14.2418831, title: "Gran Caffè Gambrinus", subtitle: "Tappa 4"),
    Pin(lat: 40.8386956, long: 14.242441, title: "Teatro San Carlo", subtitle: "Tappa 5"),
    Pin(lat: 40.8340526, long: 14.241411, title: "Castel dell'Ovo", subtitle: "Tappa 6")
]


var AndreuccioPerugia = [
  Pin(lat: 40.8471205, long: 14.2581617, title: "Piazza Mercato", subtitle: "Tappa 1"),
  Pin(lat: 40.8430241, long: 14.2526411, title: "Quartiere Malpertugio (oggi via Medina)", subtitle: "Tappa 2"),
  Pin(lat: 40.842183, long: 14.2539457, title: "Rua Catalana", subtitle: "Tappa 3"),
  Pin(lat: 40.8525582, long: 14.259689, title: "Duomo", subtitle: "Tappa 4")
]

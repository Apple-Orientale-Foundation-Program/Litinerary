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

var itinerario1 = [
  Pin(lat: 40.844877, long: 14.257189, title: "Via Mezzocannone"),
  Pin(lat: 40.846120, long: 14.256317, title: "Libreria Dante & Descartes"),
  Pin(lat: 40.848586, long: 14.252477, title: "Liceo Vittorio Emanuele II"),
  Pin(lat: 40.849539, long: 14.250640, title: "Port'Alba"),
  Pin(lat: 40.840177, long: 14.252188, title: "Piazza Municipio"),
  Pin(lat: 40.836637, long: 14.246969, title: "Via Chiaia"),
  Pin(lat: 40.8342492, long: 14.2418517, title: "Piazza dei Martiri"),
  Pin(lat: 40.8318695, long: 14.2347563, title: "Lungomare Caracciolo"),
]

var itinerario2 = [
  Pin(lat: 40.8534, long: 14.257189, title: "1"),
  Pin(lat: 40.8532, long: 14.256317, title: "2"),
  Pin(lat: 40.8587, long: 14.252477, title: "3"),
  Pin(lat: 40.849539, long: 14.250640, title: "Port'Alba"),
  Pin(lat: 40.840177, long: 14.252188, title: "Piazza Municipio"),
  Pin(lat: 40.836637, long: 14.246969, title: "Via Chiaia"),
  Pin(lat: 40.8342492, long: 14.2418517, title: "Piazza dei Martiri"),
  Pin(lat: 40.8318695, long: 14.2347563, title: "Lungomare Caracciolo"),
]


//amicageniale = [mezzocannoneAG, danteDescartes, liceoVittorio, portAlba, piazzaMunicipio, viaChiaia, piazzaMartiri, lungomareCaracciolo]
//andreuccio = [piazzaMercato, quartiereMalpertugio, ruaCatalana, duomo]
//renatocaccioppolo = [libreriaColonnese, federicoII, mezzocannoneRC, sanDomenico, viaRoma, castelDellOvo, sanCarlo, piazzaTriesteTrento, gambrinus]

//
//  Stop.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 27/10/2020.
//
//struct delle info della tappa da mettere nella modale

import Foundation
import MapKit
import UIKit

struct Stop: Identifiable {
    
    var id = UUID()
            
    var stopTitle: String
    var stopDescription: String
    var stopAudio: String
    var stopLatitude: Double
    var stopLongitude: Double
//    let stopCoordinate : "(latitude: \(.stopLatitude), longitude: \(.stopLongitude))"
    var stopFirst: String
    
}

//let sourceCoordinate = CLLocationCoordinate2D(latitude: 40.844877, longitude: 14.257189)

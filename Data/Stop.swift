//
//  Stop.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 27/10/2020.
//
//struct delle info della tappa da mettere nella modale

import Foundation

import UIKit

struct Stop: Identifiable {
    
    var id = UUID()
        
    var stopTitle: String
    var stopDescription: String
    var stopAudio: String
}

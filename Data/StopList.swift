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


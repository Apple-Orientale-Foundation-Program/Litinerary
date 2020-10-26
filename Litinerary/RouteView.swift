//
//  MapView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 26/10/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        
        mapView()
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


struct mapView : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<mapView>) -> MKMapView{
        
        let map = MKMapView()
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.839981, longitude: 14.252540), latitudinalMeters: 100000, longitudinalMeters: 100000)
       
        map.region = region
        return map

    }

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<mapView>) {
        
    }



}



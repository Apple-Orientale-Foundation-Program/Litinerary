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
    
    func makeCoordinator() -> mapView.Coordinator {
        return mapView.Coordinator()
    }
    
    func makeUIView(context: UIViewRepresentableContext<mapView>) -> MKMapView{
        
        let map = MKMapView()
        
        let sourceCoordinate = CLLocationCoordinate2D(latitude: 40.844877, longitude: 14.257189)
        let destinationCoordinate = CLLocationCoordinate2D(latitude: 40.8318695, longitude: 14.2347563)
        
        let region = MKCoordinateRegion(center: sourceCoordinate, latitudinalMeters: 100000, longitudinalMeters: 100000)
        
        let sourcePin = MKPointAnnotation()
        sourcePin.coordinate = sourceCoordinate
        sourcePin.title = "Via Mezzocannone"
        map.addAnnotation(sourcePin)
       
        let destinationPin = MKPointAnnotation()
        destinationPin.coordinate = destinationCoordinate
        destinationPin.title = "Lungomare Caracciolo"
        map.addAnnotation(destinationPin)
        
        
        map.region = region
        map.delegate = context.coordinator
        
        
        let req = MKDirections.Request()
        req.source = MKMapItem(placemark: MKPlacemark(coordinate: sourceCoordinate))
        req.destination = MKMapItem(placemark: MKPlacemark(coordinate: destinationCoordinate))
        
        let directions = MKDirections(request: req)
        
        directions.calculate { (direct, err) in
            
            if err != nil {
                print ((err?.localizedDescription)!)
                return
            }
            
            let polyline = direct?.routes.first?.polyline
            map.addOverlay(polyline!)
            map.setRegion(MKCoordinateRegion(polyline!.boundingMapRect), animated: true)
            
        }

        return map

    }

    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<mapView>) {
        
    }

    class Coordinator : NSObject, MKMapViewDelegate{
        
        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) ->
        MKOverlayRenderer {
            let render = MKPolylineRenderer(overlay: overlay)
            render.strokeColor = UIColor(named: "AccentColor")
            render.lineWidth = 4
            return render
        }
    }
}

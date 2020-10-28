//
//  MapView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 26/10/2020.
//

import SwiftUI
import MapKit

func initAnnotations()->[MKAnnotation]{
    map.removeAnnotations(map.annotations)
    let sourceCoordinate = CLLocationCoordinate2D(latitude: 40.844877, longitude: 14.257189)
    let twoCoordinate = CLLocationCoordinate2D(latitude: 40.8461097, longitude: 14.2541287)
//    let threeCoordinate = CLLocationCoordinate2D(latitude: 40.8461297, longitude: 14.2475626)
//    let fourCoordinate = CLLocationCoordinate2D(latitude: 40.849438, longitude: 14.251902)
//    let fiveCoordinate = CLLocationCoordinate2D(latitude: 40.8399021, longitude: 14.2531124)
//    let sixCoordinate = CLLocationCoordinate2D(latitude: 40.836984, longitude: 14.248613)
//    let sevenCoordinate = CLLocationCoordinate2D(latitude: 40.8342492, longitude: 14.2418517)
    let destinationCoordinate = CLLocationCoordinate2D(latitude: 40.8318695, longitude: 14.2347563)
    
    let sourcePin = MKPointAnnotation()
    sourcePin.coordinate = sourceCoordinate
    sourcePin.title = "Via Mezzocannone"
    map.addAnnotation(sourcePin)
    
    let twoPin = MKPointAnnotation()
    twoPin.coordinate = twoCoordinate
    twoPin.title = "Libreria Dante & Descartes"
    map.addAnnotation(twoPin)
    
//    let threePin = MKPointAnnotation()
//    threePin.coordinate = threeCoordinate
//    threePin.title = "Liceo Vittorio Emanuele II"
//    map.addAnnotation(twoPin)
//
//    let fourPin = MKPointAnnotation()
//    fourPin.coordinate = fourCoordinate
//    fourPin.title = "Port'Alba"
//    map.addAnnotation(twoPin)
//
//    let fivePin = MKPointAnnotation()
//    fivePin.coordinate = fiveCoordinate
//    fivePin.title = "Piazza Municipio"
//    map.addAnnotation(twoPin)
//
//    let sixPin = MKPointAnnotation()
//    sixPin.coordinate = sixCoordinate
//    sixPin.title = "Via Chiaia"
//    map.addAnnotation(twoPin)
//
//    let sevenPin = MKPointAnnotation()
//    sevenPin.coordinate = sevenCoordinate
//    sevenPin.title = "Piazza dei Martiri"
//    map.addAnnotation(twoPin)
    
    let destinationPin = MKPointAnnotation()
    destinationPin.coordinate = destinationCoordinate
    destinationPin.title = "Lungomare Caracciolo"
    map.addAnnotation(destinationPin)
    
    let req = MKDirections.Request()
    req.source = MKMapItem(placemark: MKPlacemark(coordinate: sourceCoordinate))
    req.destination = MKMapItem(placemark: MKPlacemark(coordinate: destinationCoordinate))
    
    
    let directions = MKDirections(request: req)

//    _ = MKPolyline(coordinates: [sourceCoordinate, twoCoordinate, destinationCoordinate], count:3)

    directions.calculate { (direct, err) in
        if err != nil {
            print ((err?.localizedDescription)!)
            return
        }
        let polyline = direct?.routes.first?.polyline
        map.addOverlay(polyline!)
        
        
    }
    map.scaleOnAllAnnotations(spanFactor: 1.4)
    return map.annotations
}

let map = MKMapView()

struct mapView : UIViewRepresentable {
    
    @State var annotations: [MKAnnotation]
    
    func makeCoordinator() -> mapView.Coordinator {
        return mapView.Coordinator()
    }
    
    func makeUIView(context: UIViewRepresentableContext<mapView>) -> MKMapView{
        
        _ = initAnnotations()
        map.delegate = context.coordinator
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

extension MKMapView{
    func centerMap(lat:Double, long: Double) {
        map.setCenter(CLLocationCoordinate2DMake(lat, long), animated: true)
    }
    
    func scaleOnAllAnnotations(spanFactor: Double = 1.2){
        var minLat = 1000.0
        var minLon = 1000.0
        var maxLat = 0.0
        var maxLon = 0.0
        for ann in map.annotations {
            if ann.coordinate.latitude > maxLat {
                maxLat = ann.coordinate.latitude
            }
            if ann.coordinate.latitude < minLat {
                minLat = ann.coordinate.latitude
            }
            if ann.coordinate.longitude > maxLon {
                maxLon = ann.coordinate.longitude
            }
            if ann.coordinate.longitude < minLon {
                minLon = ann.coordinate.longitude
            }
        }
        
        let span = ((maxLat-minLat)*spanFactor,(maxLon-minLon)*spanFactor)
        let center = ((maxLat+minLat)/2,(maxLon+minLon)/2)
        centerMap(lat: center.0, long: center.1)
        map.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2DMake(center.0, center.1), span: MKCoordinateSpan(latitudeDelta: span.0, longitudeDelta: span.1)), animated: true)
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, World!")
    }
}

//
//  MapView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 26/10/2020.
//

import SwiftUI
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


func initAnnotations(itinerario: [Pin])->[MKAnnotation]{
  let req = MKDirections.Request()
  var oldPin = Pin(lat: 0.0, long: 0.0, title: "")
  var index = 0

  map.removeOverlays(map.overlays)
  map.removeAnnotations(map.annotations)
  for pin in itinerario{
    let aPin = MKPointAnnotation()
    aPin.coordinate = pin.coord()
    aPin.title = pin.title
    map.addAnnotation(aPin)

    if index > 0 {
      req.source = MKMapItem(placemark: MKPlacemark(coordinate: oldPin.coord()))
      req.destination = MKMapItem(placemark: MKPlacemark(coordinate: pin.coord()))
      req.transportType = .walking
      let directions = MKDirections(request: req)
      directions.calculate { (direct, err) in
        if err != nil {
          print ((err?.localizedDescription)!)
          return
        }
        let polyline = direct?.routes.first?.polyline
        map.addOverlay(polyline!)
      }
    }
    index += 1
    oldPin = pin
  }
  map.scaleOnAllAnnotations(spanFactor: 1.4)
  return map.annotations
}

let map = MKMapView()

struct mapView : UIViewRepresentable {

  //@State var annotations: [MKAnnotation]
  @State var itinerario: [Pin]

  func makeCoordinator() -> mapView.Coordinator {
    return mapView.Coordinator()
  }

  func makeUIView(context: UIViewRepresentableContext<mapView>) -> MKMapView{
    _ = initAnnotations(itinerario: itinerario)
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
    mapView(itinerario: itinerario2)
  }
}

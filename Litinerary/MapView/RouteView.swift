//
//  MapView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 26/10/2020.
//

import SwiftUI
import MapKit

//Modal structure
//struct RouteView: View {
//    @State var modal = false
//    var body: some View {
//        VStack{
//            Text("Read more")
            
//        }
//        .onTapGesture {
//            self.modal.toggle()
//        }
//        .sheet(isPresented: $modal) {
//            ModalView()
//        }
//    }
    
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
    
//    func mapView(_ mapView: MKMapView, viewFor
//         annotation: MKAnnotation) -> MKAnnotationView?{
//      //Custom View for Annotation
//      let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "customView")
//      annotationView.canShowCallout = true
//      //Your custom image icon
//      annotationView.image = UIImage(named: "TappaChiusa")
//      return annotationView
//     }

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
    mapView(itinerario: AmicaGeniale)
  }
}

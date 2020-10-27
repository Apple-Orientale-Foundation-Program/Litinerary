//
//  ItineraryLocations.swift
//  Litinerary
//
//  Created by Smart Cookies on 26/10/2020.
//

import Foundation

class ItineraryList: Identifiable, ObservableObject {
    @Published var listOfItineraries: [Itinerary]
    init(listOfItineraries: [Itinerary])
    {
       self.listOfItineraries = listOfItineraries
    }
    
    func itineraryIndex(itinerary: Itinerary) -> Int {listOfItineraries.firstIndex{currentItinerary in currentItinerary.id == itinerary.id}!
        
}
}

let litineraryData = ItineraryList(
    listOfItineraries: [
        Itinerary(itineraryName: "L'Amica Geniale", itinerarySummary: "Ripercorri i luoghi di Napoli che fanno da sfondo alle vicende di Elena e Lila, le “amiche geniali” del romanzo di Elena Ferrante. Immagina una Napoli degli anni ’50 e ’60 e come verrà scoperta e vissuta dalle due ragazze nell’arco coperto dai libri “L’amica geniale” e “Storia del nuovo cognome”. Scoprirai scorci di una città visti dai loro occhi e filtrati dalla loro turbolenta esperienza di crescita.", itineraryLength: "3,8 km", itineraryDuration: "50'", image: "andreuccio"),
      Itinerary(itineraryName: "Andreuccio da Perugia", itinerarySummary: "Questo itinerario ripercorre le avventure di Andreuccio da Perugia, protagonista della V novella della II giornata del Decameron, che Boccaccio ambienta nella Napoli Angioina, città che conosceva bene per averci vissuto da giovane per un lungo periodo.I luoghi attraversati dal protagonista, il Mercato, la chiesa maggiore, la Rua Catalana, i vicoli oscuri e maleodoranti, sono luoghi reali della Napoli trecentesca, di cui ancora oggi è possibile trovare delle tracce.", itineraryLength: "3,2 km", itineraryDuration: "1,5 h", image: "andreuccio"),
      Itinerary(itineraryName: "Il Gallo di Renato Caccioppoli", itinerarySummary: "Renato Caccioppoli girava per il centro di Napoli con un gallo al guinzaglio quale forma di protesta alla legge fascista che vietava agli uomini di mostrarsi con un animale di piccola taglia, cosa che ne comprometteva la virilità. Il libro possiede una complessità compositiva e concettuale che ne fanno un’opera di raro valore e necessaria in un clima letterario e politico qual è quello attuale.", itineraryLength: "4,6 km", itineraryDuration: "50 min", image: "andreuccio")
    ])

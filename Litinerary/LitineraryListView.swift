//
//  LitineraryListView.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 26/10/2020.
//

import SwiftUI

struct LitineraryListView: View {
    @EnvironmentObject var litineraryList: ItineraryList
    
    var body: some View {
        
        NavigationView {
            VStack {
                List(litineraryList.listOfItineraries)
               {itinerary in
                    NavigationLink(destination:ItinerarySummary(itinerary: itinerary).environmentObject(litineraryList))
                        {LitineraryRowView(litineraryList: _litineraryList, itinerary: itinerary).environmentObject(litineraryList)}
                }
                .listStyle(GroupedListStyle())
                
                .navigationTitle("Itinerari")
                
                
                
                
                
                
            }
            
        }
    }
        
    }


struct LitineraryListView_Previews: PreviewProvider {
    static var previews: some View {
        LitineraryListView()
            .environmentObject(ItineraryList)
    }
}

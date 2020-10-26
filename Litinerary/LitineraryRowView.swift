//
//  LitineraryRowView.swift
//  Litinerary
//
//  Created by Sonia Di Nicoli on 26/10/2020.
//

import SwiftUI

struct LitineraryRowView: View {
    @EnvironmentObject var litineraryList: ItineraryList
    @State var itinerary: Itinerary
    var body: some View {
    
        
        
        
        VStack {
            ZStack {
                Image("posillipo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, minHeight: 100)
                    .cornerRadius(50)
                    .padding(.horizontal)
                
                HStack(alignment: .bottom, spacing: 10.0) {
                    
                    Image(systemName: "figure.walk")
                        .foregroundColor(.black)
                    Text(itinerary.itineraryLength)
                            .foregroundColor(.black)
                    Image(systemName: "timer")
                        .foregroundColor(.black)
                    Text(itinerary.itineraryLength)
                            .foregroundColor(.black)
                            
                            
                       
                }
                .padding([.top, .leading], 160.0)
            }
            Text(itinerary.itineraryName)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            
            
        }
        
    }
    }


struct LitineraryRowView_Previews: PreviewProvider {
    static var previews: some View {
        LitineraryRowView(itinerary: litineraryData.listOfItineraries[0])
            .environmentObject(litineraryData)
    }
}

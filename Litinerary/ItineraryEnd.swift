//
//  ItineraryEnd.swift
//  Litinerary
//
//  Created by Smart Cookies on 23/10/2020.
//

import SwiftUI

struct ItineraryEnd: View {
    var body: some View {
        VStack {
            Text("Complimenti!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 50.0)
            
            Text("Hai completato l'itinerario")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color("darkGray"))
            
            
            
            
            Image("MARKER")
                .resizable()
                .frame(width: 200.0, height: 230.0)
            
            Text("Ecco alcune cose che potrebbero servirti:")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color("darkGray"))
                .multilineTextAlignment(.center)
            
            Spacer()
                .frame(height: 40.0)
            
            VStack(alignment: .leading) {
                Text("Aggiungi ai segnalibri")
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                Text("Vedi le librerie nei dintorni")
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                
                Text("Sfoglia gli altri itinerari")
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                
                Text("Vota Litinerary su AppStore")
                    .multilineTextAlignment(.leading)
                    .font(.title3)
            }
            
            
            
            
            
            
            
            
            
        }
    }
    
    struct ItineraryEnd_Previews: PreviewProvider {
        static var previews: some View {
            ItineraryEnd()
        }
    }
}

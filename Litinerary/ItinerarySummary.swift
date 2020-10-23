//
//  ItinerarySummary.swift
//  Litinerary
//
//  Created by Smart Cookies on 23/10/2020.
//

import SwiftUI

struct ItinerarySummary: View {
    var body: some View {
        NavigationView{ //just example structure for page
            VStack {
                Rectangle() //placeholder for map
                    .cornerRadius(30)
                    .scaledToFit()
                    .frame(minHeight: 100)
                    
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat ")
                    .font(.body) //also placeholder for real summary
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding()
                    
                
                //placeholder for image
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 50, height:50)
                        
                        Text("Inizia")
                    }
                    
                }
                
                
                
                    
                    
                    
                    
                .navigationTitle("Itinerario")
                
                
                
            }
        
            
            
        }
    }
}

struct ItinerarySummary_Previews: PreviewProvider {
    static var previews: some View {
        ItinerarySummary()
    }
}

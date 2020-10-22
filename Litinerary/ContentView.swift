//
//  ContentView.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 22/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View{
    
    @State var data = [
        List(id: 0, image:"toledo", title : "Itinerario Toledo", details: "Questo itinerario parla di blah blah blah blah blah",expand: false),
        List(id: 1, image:"piazzadante", title: "Napoli Geniale", details: "Questo itinerario parla di blah blaah", expand: false),
        List(id:2, image: "posillipo", title: "Posillipo Itinerario", details:"Itinerario", expand: false),
        List(id:3, image: "posillipo", title: "Posillipo Itinerario", details:"Itinerario", expand: false)
    ]
    
    var body: some View{
        NavigationView{
            
        VStack{
            
            ScrollView(.vertical, showsIndicators: false) {
                Spacer(minLength: 15.0)
                VStack(spacing:15){
                    
                    ForEach(self.data){i in
                        Image(i.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, minHeight: 100)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        
                        
                    }
                    
                    
                }
                
            
        }
    }
        .navigationTitle("Itinerari")
        
        
        
            
            
        }
        
        
        
        
        
}

//Sample per i dati homeview
struct List: Identifiable{
var id: Int
var image: String
var title: String
var details: String
var expand: Bool
}
}

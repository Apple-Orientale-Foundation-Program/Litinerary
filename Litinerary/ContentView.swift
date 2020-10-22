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
        Card(id: 0, image:"toledo", title : "Itinerario Toledo", details: "Questo itinerario parla di blah blah blah blah blah",expand: false),
        Card(id: 1, image:"piazzadante", title: "Napoli Geniale", details: "Questo itinerario parla di blah blaah", expand: false),
        Card(id:2, image: "posillipo", title: "Posillipo Itinerario", details:"Itinerario", expand: false)
    ]
    
    var body: some View{
        VStack{
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing:15){
                    
                    ForEach(self.data){i in
                        Image(i.image)
                            .resizable()
                            .frame(height: 250)
                            .cornerRadius(60)
                            .padding(.horizontal)
                        
                    }
                    
                    
                }
            
        }
    }
}

//Sample per i dati homeview
struct Card : Identifiable{
var id: Int
var image: String
var title: String
var details: String
var expand: Bool
}
}

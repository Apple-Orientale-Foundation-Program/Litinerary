//
//  LitineraryApp.swift
//  Litinerary
//
//  Created by Smart Cookies on 22/10/2020.
//

import SwiftUI

@main
struct LitineraryApp: App {
    @EnvironmentObject var litineraryList: ItineraryList
    @EnvironmentObject var favorites: Favorites
    
    var body: some Scene {
        WindowGroup {
          ContentView().environmentObject(litineraryData)
        }
    }
}

struct LitineraryApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

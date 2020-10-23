//
//  SplashView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 23/10/2020.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("AppIcon2")
                .padding()
            Image("Litinerary")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

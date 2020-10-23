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
            Image("AppIconSF")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            Image("Litinerary")
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

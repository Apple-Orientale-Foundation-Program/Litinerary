//
//  SplashView.swift
//  Litinerary
//
//  Created by Smart Cookies on 23/10/2020.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
            VStack {
                Image("AppIcon2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
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

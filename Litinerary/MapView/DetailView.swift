//
//  DetailView.swift
//  Litinerary
//
//  Created by Wanda Punzi Zarino on 29/10/2020.
//

import SwiftUI

struct DetailView: View {
        var stop: Stop

          var body: some View {

            VStack{

              Text(stop.title)

                .fontWeight(.black)

            Text(stop.content)

            Text(stop.content2)

              .fontWeight(.light)

            }

          }

        }
    
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(stop: Stop())
    }
}

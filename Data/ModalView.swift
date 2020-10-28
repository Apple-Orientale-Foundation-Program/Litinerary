//
//  ModalView.swift
//  Litinerary
//
//  Created by Giusi Ferrigno on 28/10/2020.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        VStack{
            Text("Via \n Mezzocannone")
                .font(Font.custom("Raleway", size: 38))
                .fontWeight(.bold)
                .foregroundColor(Color("darkGray"))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            Text("Lenù cerca di separarsi da Lila dopo essersi sentita umiliata da lei durante una festa a casa della professoressa Galiani. Decisa a voler comprare a sue spese i libri scolastici, inizia a lavorare in una libreria in via Mezzocannone. Il figlio della professoressa, colpito dai discorsi fatti da Elena alla festa, va a trovarla a lavoro.")
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding()
                .font(Font.custom("Raleway", size: 20))
            Text("“Girovagavo per via Mezzocannone durante la pausa del pranzo quando mi sentii chiamare. Era Armando, stava andando a dare un esame. Scoprii che studiava medicina e l’esame era difficile ma, prima di dileguarsi verso san Domenico Maggiore, si intrattenne ugualmente con me riempiendomi di complimenti e riattaccando a parlare di politica.In serata si affacciò addirittura in libreria, aveva preso ventotto, era felice. Mi chiese il numero di telefono, dissi che non avevo telefono; mi chiese se facevamo una passeggiata la domenica successiva, gli dissi che la domenica dovevo aiutare mamma in casa. [...] Insomma ero contenta perché gli ero evidentemente piaciuta e fui gentile, ma non disponibile.Le parole di Lila avevano comunque fatto danno. Mi sentivo mal vestita, mal pettinata, falsa nei toni, ignorante. [...] Così Napoli, l’Italia, il mondo erano ridiventati velocemente una landa nebbiosa dentro cui non mi orientavo più. Armando parlava, io facevo sì con la testa, ma di ciò che diceva capivo poco o niente.”")
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding()
                .font(Font.custom("Raleway", size: 20))        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}

//
//  StopContent.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 29/10/2020.
//

import Foundation
import MapKit

struct Stop {
    var title: String
    var description: String
    var content: String
    var description2: String
    var content2: String
}

var AmicaGenialeStops = [
    Stop(title: "Via Mezzocannone", description: "Lenù cerca di separarsi da Lila dopo essersi sentita umiliata da lei durante una festa a casa della professoressa Galiani. Decisa a voler comprare a sue spese i libri scolastici, inizia a lavorare in una libreria in via Mezzocannone. Il figlio della professoressa, colpito dai discorsi fatti da Elena alla festa, va a trovarla a lavoro.", content: "“Girovagavo per via Mezzocannone durante la pausa del pranzo quando mi sentii chiamare. Era Armando, stava andando a dare un esame. Scoprii che studiava medicina e l’esame era difficile ma, prima di dileguarsi verso san Domenico Maggiore, si intrattenne ugualmente con me riempiendomi di complimenti e riattaccando a parlare di politica. In serata si affacciò addirittura in libreria, aveva preso ventotto, era felice. Mi chiese il numero di telefono, dissi che non avevo telefono; mi chiese se facevamo una passeggiata la domenica successiva, gli dissi che la domenica dovevo aiutare mamma in casa. […] Insomma ero contenta perché gli ero evidentemente piaciuta e fui gentile, ma non disponibile. Le parole di Lila avevano comunque fatto danno. Mi sentivo mal vestita, mal pettinata, falsa nei toni, ignorante. […] Così Napoli, l’Italia, il mondo erano ridiventati velocemente una landa nebbiosa dentro cui non mi orientavo più. Armando parlava, io facevo sì con la testa, ma di ciò che diceva capivo poco o niente. “", description2: "", content2: ""),
    Stop(title: "Dante & Descartes", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "Liceo Vittorio II", description: "Per la prima volta dopo i tempi delle elementari, Elena rivede Nino Sarratore, il bambino del Rione di cui era innamorata, riconoscendolo tra la folla di ragazzi che frequentano il suo liceo.", content:
            """
         “Un giorno uno studente mi colpì per la sua andatura dinoccolata, magrissimo, capelli bruni arruffati, un viso che mi sembrò bellissimo e con qualcosa di familiare. Quanti anni poteva avere: sedici, diciassette? Lo osservai bene, tornai a guardarlo e mi si fermò il cuore: era Nino Sarratore, il figlio di Donato Sarratore, il ferroviere-poeta. Ricambiò lo sguardo ma distrattamente, non mi riconobbe, La giacchetta era sformata ai gomiti, stretta di spalle, i pantaloni erano lisi, le scarpe bitorzolute. Non aveva nessun segno d’agiatezza come invece ne sfoggiavano Stefano e, soprattutto, i Solara. Suo padre, pur avendo scritto un libro di poesie, evidentemente non era ancora diventato ricco.
         Fui molto turbata da quell’apparizione inattesa. All’uscita pensai di correre subito a raccontarlo a Lila, l’impulso fu violentissimo, ma poi cambiai idea. Se gliel’avessi detto, sicuramente mi avrebbe chiesto di accompagnarmi a scuola per rivederlo. E sapevo già cosa sarebbe accaduto. Come Nino non s’era accorto di me, come non aveva riconosciuto la bambina bionda e sottile delle elementari nella quattordicenne grassa e foruncolosa che ero diventata, così avrebbe riconosciuto subito Lila e ne sarebbe rimasto conquistato. Decisi di coltivarmi l’immagine di Nino Sarratore in silenzio, mentre usciva da scuola a capo chino con un’andatura dondolante e se la filava per corso Garibaldi. Da quel giorno andai a scuola come se vederlo, o anche solo intravederlo, fosse l’unica ragione vera per andarci.”
""", description2: "", content2: ""),
    Stop(title: "Port'Alba", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "Piazza Municipio", description: "Elena viene portata a passeggio per Napoli dal padre, che vuole prepararla al percorso che farà tutti i giorni una volta iniziato il liceo.", content: "“Mi portò a vedere il posto dove lavorava, che era in piazza Municipio. Anche lì, disse, tutto era diventato nuovo, tagliate le piante, spaccato tutto: ora vedi quanto spazio, l’unica cosa vecchia è il Maschio Angioino, però è bello, piccerè, due maschi veri ci sono a Napoli, papà tuo e quello lì. Andammo al comune, salutò questo e quello, era molto conosciuto. Con alcuni fu gioviale, mi presentò, ripeté per l’ennesima volta che avevo avuto a scuola nove in italiano e nove in latino; con altri fu quasi muto, solo va bene, sì, voi comandate e io faccio.”", description2: "", content2: ""),
    Stop(title: "Via Chiaia", description: "Una quattordicenne Lenù passeggia di sera nel centro di Napoli con Lila, suo fratello Rino e i loro compagni del Rione Carmela e Pasquale: Lila e le ragazze insistono per visitare il ricco quartiere di Chiaia, che sanno essere frequentato dalla gente più ricca ed elegante della città. I ragazzi, sapendo di non appartenere all’ambiente, si fanno convincere di malavoglia.", content: """
        “Fu come passare un confine. Mi ricordo un fitto passeggio e una sorta di umiliante diversità. Non guardavo i ragazzi, ma le ragazze, le signore: erano assolutamente diverse da noi. Sembravano aver respirato un’altra aria, aver mangiato altri cibi, essersi vestite su qualche altro pianeta, aver imparato a camminare su fili di vento. Ero a bocca aperta. Tanto più che mentre io mi sarei fermata per guardare con agio abiti, scarpe, il tipo di occhiali che portavano se portavano occhiali, loro passavano e sembrava che non mi vedessero. Non vedevano nessuno di noi cinque. Eravamo non percepibili. O ininteressanti. E anzi, se a volte lo sguardo cadeva su di noi, si giravano subito da un’altra parte come infastidite. Si guardavano solo tra di loro.
         Di questo ci rendemmo conto tutti. Nessuno ne parlò, ma capimmo che Rino e Pasquale, più grandi, per quelle strade trovavano solo la conferma di cose che già sapevano, e questo li metteva di malumore, li rendeva torvi, incattiviti dalla certezza di essere fuori luogo, mentre noi ragazze lo scoprivamo solo in quel momento e con sentimenti ambigui. Ci sentimmo a disagio e incantate, brutte ma anche spinte a immaginarci come saremmo diventate se avessimo avuto modo di rieducarci e vestirci e truccarci e agghindarci come si deve. Intanto, per non rovinarci la serata, reagivamo ridacchiando, ironizzando.”
        """, description2: "", content2: ""),
    Stop(title: "Piazza dei Martiri", description: "Dopo il matrimonio con Stefano Carracci, in collaborazione con i Solara, Lila permette di vendere le scarpe disegnate da lei in un negozio a Piazza dei Martiri. I due uomini vogliono esporre una sua fotografia ingrandita nel negozio, e lei, colta da un impetuoso movimento interiore, decide di stravolgere l’immagine operando con forbici, cartoncini e pittura, facendosi aiutare anche da Elena.", content: """
        “Passammo gli ultimi giorni di settembre chiuse nel negozio, noi due e tre operai. Furono ore magnifiche di gioco, di invenzione, di libertà, che non ci capitavano a quel modo, insieme, forse dall’infanzia. Lila mi trascinò dentro la sua frenesia. Comprammo colla, vernici, pennelli. Applicammo con estrema precisione (lei era esigente) i ritagli di cartoncino nero. Tracciammo confini rossi o blu tra i resti della foto e le nuvole scure che se la mangiavano. Lila era sempre stata brava con le linee e i colori, ma lì fece qualcosa in più che, anche se non avrei saputo dire cos’era, di ora in ora mi travolse. […] Ci dimenticammo di Antonio, di Nino, di Stefano, dei Solara, dei miei problemi con lo studio, della sua gravidanza, delle tensioni tra noi. Sospendemmo il tempo, isolammo lo spazio, restò solo il gioco della colla, delle forbici, dei cartoncini, dei colori: il gioco dell’invenzione affiatata.
         Ma ci fu altro. Presto mi tornò in mente il verbo usato da Michele: .italic(scancellare). Probabile, sì, probabilissimo che le strisce nere finissero di fatto per isolare le scarpe e renderle più visibili: il giovane Solara non era stupido, sapeva guardare. Ma a tratti, sempre più intensamente, sentii che non era quello il vero obiettivo del nostro incollare e colorare. Lila era felice, e mi stava trascinando sempre di più nella sua felicità feroce, soprattutto perché aveva trovato di colpo, forse senza nemmeno rendersene conto, un’occasione che le permetteva di .italic(rappresentarsi) la furia contro se stessa, l’insorgere, forse per la prima volta nella sua vita, del bisogno - e qui il verbo usato da Michele era appropriato - di cancellarsi.”
        """, description2: "", content2: ""),
    Stop(title: "Lungomare Caracciolo", description: "Elena viene portata a passeggio per Napoli dal padre, che vuole prepararla al percorso che farà tutti i giorni una volta iniziato il liceo. Per la prima volta vede il mare, senza Lila.", content: """
        “Infine mi annunciò che mi avrebbe mostrato il Vesuvio da vicino e il mare.
         Fu un momento indimenticabile. Andammo verso via Caracciolo, sempre più vento, sempre più sole. Il Vesuvio era una forma delicata color pastello ai piedi della quale si ammucchiavano i ciottoli biancastri della città, il taglio color terra di Castel dell’Ovo, il mare. Ma che mare. Era agitatissimo, fragoroso, il vento toglieva il fiato, incollava i vestiti addosso e levava i capelli dalla fronte. Ci tenemmo dall’altro lato della strada insieme a una piccola folla che guardava lo spettacolo. Le onde ruzzolavano come tubi di metallo blu portando in cima la chiara d’uovo della spuma, poi si frangevano in mille schegge scintillanti e arrivavano fin sulla strada con un oh di meraviglia e timore da parte di tutti noi che guardavamo. Che peccato che non c’era Lila. Mi sentii stordita dalle raffiche potenti, dal rumore. Avevo l’impressione che, pur assorbendo molto di quello spettacolo, moltissime cose, troppe si spampanassero intorno senza lasciarsi afferrare.
         Mio padre mi strinse la mano come se temesse che sgusciassi via. Infatti avevo voglia di lasciarlo, correre, spostarmi, attraversare la strada, farmi investire dalle scaglie brillanti del mare. In quel momento così tremendo, pieno di luce e di clamore, mi finsi sola nel nuovo della città, nuova io stessa con tutta la vita davanti, esposta alla furia mobile delle cose ma sicuramente vincitrice: io, io e Lila, noi due con quella capacità che insieme - solo insieme - avevamo di prendere la massa di colori, di rumori, di cose e persone, e raccontarcela e darle forza.”
""", description2: "", content2: ""),
]


var AndreuccioStops = [
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
]


var CaccioppoliStops = [
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
    Stop(title: "bla", description: "bla", content: "bla", description2: "", content2: ""),
]

//
//  StopContent.swift
//  Litinerary
//
//  Created by Alina Brandizzi on 29/10/2020.
//

import Foundation
import MapKit

struct Stop {
    var title = ""
    var description = ""
    var content = ""
    var description2 = ""
    var content2 = ""
    var audio = ""
}

func findStop(Stops: [Stop], title: String)->Stop?{
  return Stops.filter{($0.title == title)}.first
}

var actualStops = AmicaGenialeStops


var AmicaGenialeStops = [
    Stop(title: "Via Mezzocannone", description: "Lenù cerca di separarsi da Lila dopo essersi sentita umiliata da lei durante una festa a casa della professoressa Galiani. Decisa a voler comprare a sue spese i libri scolastici, inizia a lavorare in una libreria in via Mezzocannone. Il figlio della professoressa, colpito dai discorsi fatti da Elena alla festa, va a trovarla a lavoro.", content: "“Girovagavo per via Mezzocannone durante la pausa del pranzo quando mi sentii chiamare. Era Armando, stava andando a dare un esame. Scoprii che studiava medicina e l’esame era difficile ma, prima di dileguarsi verso san Domenico Maggiore, si intrattenne ugualmente con me riempiendomi di complimenti e riattaccando a parlare di politica. In serata si affacciò addirittura in libreria, aveva preso ventotto, era felice. Mi chiese il numero di telefono, dissi che non avevo telefono; mi chiese se facevamo una passeggiata la domenica successiva, gli dissi che la domenica dovevo aiutare mamma in casa. […] Insomma ero contenta perché gli ero evidentemente piaciuta e fui gentile, ma non disponibile. Le parole di Lila avevano comunque fatto danno. Mi sentivo mal vestita, mal pettinata, falsa nei toni, ignorante. […] Così Napoli, l’Italia, il mondo erano ridiventati velocemente una landa nebbiosa dentro cui non mi orientavo più. Armando parlava, io facevo sì con la testa, ma di ciò che diceva capivo poco o niente. “", description2: "", content2: "", audio: "agletturauno"),
    
    Stop(title: "Dante & Descartes", description: "Due librerie animate da una passione: vendere libri. Antichi, rari, esauriti, nuovi, universitari... In questo tempo di consumismo e di menzogne, di supermercati impersonali e virtuali anche per i libri, le librerie vanno perdendo la propria identità. Dal fondo della città, Raimondo e Giancarlo continuano la tradizione, inattuale ma opportuna, degli antichi librai. Mediatori e distributori del piacere della conoscenza", content: "", description2: "", content2: "", audio: ""),
    
    Stop(title: "Liceo Vittorio II", description: "Per la prima volta dopo i tempi delle elementari, Elena rivede Nino Sarratore, il bambino del Rione di cui era innamorata, riconoscendolo tra la folla di ragazzi che frequentano il suo liceo.", content:" “Un giorno uno studente mi colpì per la sua andatura dinoccolata, magrissimo, capelli bruni arruffati, un viso che mi sembrò bellissimo e con qualcosa di familiare. Quanti anni poteva avere: sedici, diciassette? Lo osservai bene, tornai a guardarlo e mi si fermò il cuore: era Nino Sarratore, il figlio di Donato Sarratore, il ferroviere-poeta. Ricambiò lo sguardo ma distrattamente, non mi riconobbe, La giacchetta era sformata ai gomiti, stretta di spalle, i pantaloni erano lisi, le scarpe bitorzolute. Non aveva nessun segno d’agiatezza come invece ne sfoggiavano Stefano e, soprattutto, i Solara. Suo padre, pur avendo scritto un libro di poesie, evidentemente non era ancora diventato ricco. Fui molto turbata da quell’apparizione inattesa. All’uscita pensai di correre subito a raccontarlo a Lila, l’impulso fu violentissimo, ma poi cambiai idea. Se gliel’avessi detto, sicuramente mi avrebbe chiesto di accompagnarmi a scuola per rivederlo. E sapevo già cosa sarebbe accaduto. Come Nino non s’era accorto di me, come non aveva riconosciuto la bambina bionda e sottile delle elementari nella quattordicenne grassa e foruncolosa che ero diventata, così avrebbe riconosciuto subito Lila e ne sarebbe rimasto conquistato. Decisi di coltivarmi l’immagine di Nino Sarratore in silenzio, mentre usciva da scuola a capo chino con un’andatura dondolante e se la filava per corso Garibaldi. Da quel giorno andai a scuola come se vederlo, o anche solo intravederlo, fosse l’unica ragione vera per andarci.”", description2: "", content2: "", audio: "agletturadue"),
    
    Stop(title: "Port'Alba", description: "", content: "", description2: "", content2: "", audio: ""),
    
    Stop(title: "Piazza Municipio", description: "Elena viene portata a passeggio per Napoli dal padre, che vuole prepararla al percorso che farà tutti i giorni una volta iniziato il liceo.", content: "“Mi portò a vedere il posto dove lavorava, che era in piazza Municipio. Anche lì, disse, tutto era diventato nuovo, tagliate le piante, spaccato tutto: ora vedi quanto spazio, l’unica cosa vecchia è il Maschio Angioino, però è bello, piccerè, due maschi veri ci sono a Napoli, papà tuo e quello lì. Andammo al comune, salutò questo e quello, era molto conosciuto. Con alcuni fu gioviale, mi presentò, ripeté per l’ennesima volta che avevo avuto a scuola nove in italiano e nove in latino; con altri fu quasi muto, solo va bene, sì, voi comandate e io faccio.”", description2: "", content2: "", audio: "agletturatre"),
    
    Stop(title: "Via Chiaia", description: "Una quattordicenne Lenù passeggia di sera nel centro di Napoli con Lila, suo fratello Rino e i loro compagni del Rione Carmela e Pasquale: Lila e le ragazze insistono per visitare il ricco quartiere di Chiaia, che sanno essere frequentato dalla gente più ricca ed elegante della città. I ragazzi, sapendo di non appartenere all’ambiente, si fanno convincere di malavoglia.", content: """
        “Fu come passare un confine. Mi ricordo un fitto passeggio e una sorta di umiliante diversità. Non guardavo i ragazzi, ma le ragazze, le signore: erano assolutamente diverse da noi. Sembravano aver respirato un’altra aria, aver mangiato altri cibi, essersi vestite su qualche altro pianeta, aver imparato a camminare su fili di vento. Ero a bocca aperta. Tanto più che mentre io mi sarei fermata per guardare con agio abiti, scarpe, il tipo di occhiali che portavano se portavano occhiali, loro passavano e sembrava che non mi vedessero. Non vedevano nessuno di noi cinque. Eravamo non percepibili. O ininteressanti. E anzi, se a volte lo sguardo cadeva su di noi, si giravano subito da un’altra parte come infastidite. Si guardavano solo tra di loro.
         Di questo ci rendemmo conto tutti. Nessuno ne parlò, ma capimmo che Rino e Pasquale, più grandi, per quelle strade trovavano solo la conferma di cose che già sapevano, e questo li metteva di malumore, li rendeva torvi, incattiviti dalla certezza di essere fuori luogo, mentre noi ragazze lo scoprivamo solo in quel momento e con sentimenti ambigui. Ci sentimmo a disagio e incantate, brutte ma anche spinte a immaginarci come saremmo diventate se avessimo avuto modo di rieducarci e vestirci e truccarci e agghindarci come si deve. Intanto, per non rovinarci la serata, reagivamo ridacchiando, ironizzando.”
        """, description2: "", content2: "", audio: "agletturaquattro"),
    
    Stop(title: "Piazza dei Martiri", description: "Dopo il matrimonio con Stefano Carracci, in collaborazione con i Solara, Lila permette di vendere le scarpe disegnate da lei in un negozio a Piazza dei Martiri. I due uomini vogliono esporre una sua fotografia ingrandita nel negozio, e lei, colta da un impetuoso movimento interiore, decide di stravolgere l’immagine operando con forbici, cartoncini e pittura, facendosi aiutare anche da Elena.", content: """
        “Passammo gli ultimi giorni di settembre chiuse nel negozio, noi due e tre operai. Furono ore magnifiche di gioco, di invenzione, di libertà, che non ci capitavano a quel modo, insieme, forse dall’infanzia. Lila mi trascinò dentro la sua frenesia. Comprammo colla, vernici, pennelli. Applicammo con estrema precisione (lei era esigente) i ritagli di cartoncino nero. Tracciammo confini rossi o blu tra i resti della foto e le nuvole scure che se la mangiavano. Lila era sempre stata brava con le linee e i colori, ma lì fece qualcosa in più che, anche se non avrei saputo dire cos’era, di ora in ora mi travolse. […] Ci dimenticammo di Antonio, di Nino, di Stefano, dei Solara, dei miei problemi con lo studio, della sua gravidanza, delle tensioni tra noi. Sospendemmo il tempo, isolammo lo spazio, restò solo il gioco della colla, delle forbici, dei cartoncini, dei colori: il gioco dell’invenzione affiatata.
         Ma ci fu altro. Presto mi tornò in mente il verbo usato da Michele: .italic(scancellare). Probabile, sì, probabilissimo che le strisce nere finissero di fatto per isolare le scarpe e renderle più visibili: il giovane Solara non era stupido, sapeva guardare. Ma a tratti, sempre più intensamente, sentii che non era quello il vero obiettivo del nostro incollare e colorare. Lila era felice, e mi stava trascinando sempre di più nella sua felicità feroce, soprattutto perché aveva trovato di colpo, forse senza nemmeno rendersene conto, un’occasione che le permetteva di .italic(rappresentarsi) la furia contro se stessa, l’insorgere, forse per la prima volta nella sua vita, del bisogno - e qui il verbo usato da Michele era appropriato - di cancellarsi.”
        """, description2: "", content2: "", audio: "agletturacinque"),
   
    Stop(title: "Lungomare Caracciolo", description: "Elena viene portata a passeggio per Napoli dal padre, che vuole prepararla al percorso che farà tutti i giorni una volta iniziato il liceo. Per la prima volta vede il mare, senza Lila.", content: """
        “Infine mi annunciò che mi avrebbe mostrato il Vesuvio da vicino e il mare.
         Fu un momento indimenticabile. Andammo verso via Caracciolo, sempre più vento, sempre più sole. Il Vesuvio era una forma delicata color pastello ai piedi della quale si ammucchiavano i ciottoli biancastri della città, il taglio color terra di Castel dell’Ovo, il mare. Ma che mare. Era agitatissimo, fragoroso, il vento toglieva il fiato, incollava i vestiti addosso e levava i capelli dalla fronte. Ci tenemmo dall’altro lato della strada insieme a una piccola folla che guardava lo spettacolo. Le onde ruzzolavano come tubi di metallo blu portando in cima la chiara d’uovo della spuma, poi si frangevano in mille schegge scintillanti e arrivavano fin sulla strada con un oh di meraviglia e timore da parte di tutti noi che guardavamo. Che peccato che non c’era Lila. Mi sentii stordita dalle raffiche potenti, dal rumore. Avevo l’impressione che, pur assorbendo molto di quello spettacolo, moltissime cose, troppe si spampanassero intorno senza lasciarsi afferrare.
         Mio padre mi strinse la mano come se temesse che sgusciassi via. Infatti avevo voglia di lasciarlo, correre, spostarmi, attraversare la strada, farmi investire dalle scaglie brillanti del mare. In quel momento così tremendo, pieno di luce e di clamore, mi finsi sola nel nuovo della città, nuova io stessa con tutta la vita davanti, esposta alla furia mobile delle cose ma sicuramente vincitrice: io, io e Lila, noi due con quella capacità che insieme - solo insieme - avevamo di prendere la massa di colori, di rumori, di cose e persone, e raccontarcela e darle forza.”
""", description2: "", content2: "", audio: "agletturasei"),
]


var AndreuccioStops = [
    Stop(title: "Piazza Mercato", description: "Andreuccio da Perugia si reca a napoli per acquistare cavalli con una borsa di", content: """
        [...] la seguente mattina fu in sul Mercato, e molti ne vide e assai ne gli piacquero e di più e più mercato tenne, né di niuno potendosi accordare, per mostrare che per comperar fosse, sì come rozzo e poco cauto più volte in presenza di chi andava e di chi veniva trasse fuori questa sua borsa de’ fiorini che aveva.
E in questi trattati stando, avendo esso la sua borsa mostrata, avvenne che una giovane ciciliana bellissima, ma disposta per piccol pregio a compiacere a qualunque uomo, senza vederla egli, passò appresso di lui e la sua borsa vide e subito seco disse: – Chi starebbe meglio di me se quegli denari fosser miei? – e passò oltre.
Era con questa giovane una vecchia similmente ciciliana, la quale, come vide Andreuccio, lasciata oltre la giovane andare, affettuosamente corse a abbracciarlo: il che la giovane veggendo, senza dire alcuna cosa, da una delle parti la cominciò a attendere. Andreuccio, alla vecchia rivoltosi e conosciutala, le fece gran festa, e promettendogli essa di venire a lui all’albergo, senza quivi tenere troppo lungo sermone, si partì: e Andreuccio si tornò a mercatare ma niente comperò la mattina[...]
""", description2: " ", content2: "", audio: ""),
    Stop(title: "Quartiere Malpertugio (oggi Via Medina)", description: "", content: "[...] Laonde la fanticella a casa di costei il condusse, la quale dimorava in una contrada chiamata Malpertugio, la quale quanto sia onesta contrada il nome medesimo il dimostra. Ma esso, niente di ciò sappiendo né suspicando, credendosi in uno onestissimo luogo andare e a una cara donna, liberamente, andata la fanticella avanti, se n’entrò nella sua casa [...]", description2: "Fiordaliso racconta di essere la sorella di Andreuccio, piange e lo abbraccia e poi lo invita a fermarsi a dormire, data la pericolosità di Napoli di notte. Si congeda lasciando con un servo.", content2: "[...] Era il caldo grande: per la qual cosa Andreuccio, veggendosi solo rimasto, subitamente si spogliò in farsetto e trassesi i panni di gamba e al capo del letto gli si pose; e richiedendo il naturale uso di dovere di porre il superfluo peso del ventre, dove ciò si facesse domandò quel fanciullo, il quale nell’uno de’ canti della camera gli mostrò uno uscio e disse:– Andate là entro. –Andreuccio dentro sicuramente passato, gli venne per ventura posto il piè sopra una tavola, la quale dalla contraposta parte sconfitta dal travicello sopra il quale era; per la qual cosa capolevando questa tavola con lui insieme se n’andò quindi giuso: e di tanto l’amò Idio, che niuno male si fece nella caduta, quantunque alquanto cadesse da alto, ma tutto della bruttura, della quale il luogo era pieno, s’imbrattò. Il quale luogo, acciò che meglio intendiate e quello che è detto e ciò che segue, come stesse vi mostrerò. Egli era in un chiassetto stretto, come spesso tra due case veggiamo: sopra due travicelli, tra l’una casa e l’altra posti, alcune tavole eran confitte e il luogo da seder posto, delle quali tavole quella che con lui cadde era l’una.", audio: ""),
    Stop(title: "Rua Catalana", description: "", content: "Laonde Andreuccio, spaventato dalla voce di colui e dalla vista e sospinto da’ conforti di coloro li quali gli pareva che da carità mossi parlassero, doloroso quanto mai alcuno altro e de’ suoi denar disperato, verso quella parte onde il dì aveva la fanticella seguita, senza sa per dove s’andasse, prese la via per tornarsi all’albergo. E a se medesimo dispiacendo per lo puzzo che a lui di lui veniva, disideroso di volgersi al mare per lavarsi, si torse a man sinistra e 9 su per una via chiamata la Ruga Catalana si mise.  ", description2: " ", content2: "", audio: ""),
    Stop(title: "Duomo", description: "bla", content:"[...] Era quel dì sepellito uno arcivescovo di Napoli, chiamato messer Filippo Minutolo, era stato sepellito con ricchissimi ornamenti e con uno rubino in dito il quale valeva oltre cinquecento fiorin d’oro, il quale costoro volevano andare a spogliare; e così a Andreuccio fecer veduto. Laonde Andreuccio, più cupido che consigliato, con loro si mise in via [...]", description2: "I due ladri, data la puzza che emana, obbligano Andreuccio a lavarsi e lo calano in un pozzo vicino alla chiesa. Arrivano le guardie di giustizia e i due abbandonano il giovane. ", content2: "", audio: ""),
]


var CaccioppoliStops = [

    Stop(title: "Università Federico II di Napoli", description: "Renato Caccioppoli, professore di matematica presso l’Università Federico II di Napoli, possedeva un metodo di insegnamento unico e anticonformista, tant’è che negli anni fu soprannominato “o’ genio”. Molte delle sue lezioni sono state svolte in napoletano, che già la considerava lingua e non dialetto, come forma di ribellione alle leggi razziali che vietavano l’uso del napoletano.", content: """
        Nato mercoledì 20 gennaio 1904 e morto venerdì 8 maggio 1959, a Napoli, colpito da un proiettile di Beretta 7.65 che si è sparato alla nuca dopo aver sistemato un cuscino tra la canna e il collo, seguendo la teoria del buon suicida che tre giorni prima spiegava alla pizzeria Umberto, dove i suoi compagni comunisti gli davano notizie di un suo studente che aveva tentato di farla finita tagliandosi le vene, e si era poi fatto soccorrere. «È un idiota, dice, per suicidarsi davvero, si fa così». E così fece esattamente tre giorni dopo, tra le 17 e le 19:15, secondo il medico legale.
        [...] Il 30 aprile, all’università Federico II dove un tempo era stato anche lui studente, aveva cominciato un’ultima lezione con più di mezz’ora di ritardo era quasi mezzogiorno;
        [...] «È per voi che arrivo in ritardo, in fondo... la curva dell’attenzione assume un andamento fortemente decrescente nel giro di un quarto d’ora...» Poi – dopo una decina di sigarette, dopo aver fatto cento volte avanti e indietro tra la cattedra con la lavagna intonsa e la prima fila dei suoi studenti, per tutta la larghezza dell’aula, mentre mormorava formule in cui «magico» era l’unica parola comprensibile, con ampi gesti delle braccia abbandonate nella manica, come le membra disarticolate di un pupazzo spezzato, la mano destra che schiacciava dei gessetti – trascorso un quarto d’ora, era sparito nel suo impermeabile chiaro, sgualcito, con gli orli logori, privo di un bottone su due, L’Unità, quotidiano del Partito comunista, ficcato da sempre nella tasca destra, barcollante, ubriaco, con la schiena dritta e sempre degno. Ha vissuto come un Napoletano. È morto come un Russo.
        """, description2: " ", content2: "", audio: ""),
    Stop(title: "San Domenico", description: "Attraverso gli occhi di Caccioppoli vengono descritte in puro stile barocco molti dei monumenti principali del Centro Storico di Napoli.", content: """
        La sera di quel martedì 3 maggio 1938, mentre tutta Napoli era in eccitazione per l’arrivo, due giorni dopo, dei due dittatori, il tedesco e l’italiano, egli vagava fino a tardi, sotto un cielo notturno blu minerale, attraversando il giorno, ben oltre mezzanotte, passando da un bar all’altro, ovunque un ultimo raggio di luce fendesse la lava degli ampi selciati in pied-de-poule, facendo avanti e indietro tra via Chiaia, via dei Mille, corso Umberto I, via Mezzocannone, e poi spingendo i suoi passi lenti e titubanti fino a piazza San Domenico, sfiorando la cappella Sansevero abbandonata con il suo Cristo velato, i suoi Scheletri ricchi di venature, il suo Pudore, il suo Disinganno, tutto custodito da una vecchiarella che teneva in un cassetto del suo basso la chiave di quei tesori che nessuno chiedeva di vedere, a parte ’o genio, di quando in quando; poi zigzagava nella fessura così nera e luminosa di Spaccanapoli, fino a piazza del Gesù Nuovo con la sua facciata diamantata, girava intorno alla guglia dell’Assunzione che, eretta sotto il baldacchino di cobalto con virgola di luna, ringraziava per un’epidemia di peste che non aveva ucciso tutti, e discendendo via Roma, ex-via Toledo, riprendeva la direzione ondeggiante del palazzo Cellamare, per posarsi proprio dinanzi al Gambrinus, dove alcuni compagni discutevano ancora con passione sul ruolo di Mazzini nei fallimenti di quell’impossibile Unità italiana con la sua questione meridionale...
""", description2: " ", content2: "", audio: ""),
    Stop(title: "Libreria Antiquaria Colonnese", description: "Quella di via San Pietro a Majella è la storica sede della Libreria Colonnese, fondata nel 1965 da Gaetano e Maria Colonnese. Si trova a pochi passi dal Conservatorio, lungo il decumano maggiore, evocativo ingresso al centro antico di Napoli, dichiarato dall’Unesco “Patrimonio dell’Umanità”.Tappa obbligata per bibliofili e curiosi, per turisti e viaggiatori di passaggio in città, la libreria propone attualmente un ampio settore di libri dedicati a Napoli e alla Campania, e al Meridione in genere. Novità accanto a libri moderni e antichi, esauriti, rari e di pregio. Letteratura dell'Ottocento e del Novecento, Scienze sociali, Medicina, Giuridica, Storia, Spettacolo. Stampe, Cartoline, Curiosità. Non mancano i libri di argomenti tipicamente “Colonnesiani”: editoria non seriale, cinema, teatro, letteratura per ragazzi, libri sul libro, “gattofilia” e oggetti contemporanei di artigianato colto. Ad accogliervi nella libreria saranno Antonio e Francesca, che vi illustreranno le attività delle librerie Colonnese e della Casa Editrice Colonnese. ", content: "bla", description2: " ", content2: "", audio: ""),
    Stop(title: "Tappa al Gambrinus", description: "Poco prima di essere rinchiuso in Manicomio, Caccioppoli fa emergere tutto il suo animo rivoluzionario al momento dell’arrivo a Napoli di Hitler e Mussolini. Nella straordinaria visione sovratemporale di Caccioppoli, la napoletanità è concetto fondante del racconto, vera e propria categoria etica e intellettuale, priva di ogni vieto folclorismo e banale luogo comune. ", content: """
        Quel 5 maggio 1938 fu una mattinata di follia a Napoli. Un’enorme folla garibaldina da Plebiscito italo- germanico era contenuta con gran difficoltà, nonostante la disciplina tutta militare inculcata ventiquattr’ore su ventiquattro ai civili [...] Delle grida, dei DUCE! DUCE! DUCE! come muggiti assordanti e continui, annunciavano che erano lì, tutti e due in piedi su un’automobile militare decappottata che correva verso tutte le vittorie future, Hitler e Mussolini, entrambi eretti e col sorriso severo, lo sguardo fisso all’orizzonte ricoperto di teste e di braccia tese all’infinito fino al porto, fino al mare dove, sotto un cielo blu leggermente velato, duecento navi da guerra si preparavano alle grandi manovre marittime... Braccia levate, Führer e Duce, braccia tese, saluti romani, come uno scatto meccanico ogni cinque respiri, aveva calcolato Caccioppoli, uno dopo l’altro, uno che innescava il saluto dell’altro... ’O prufessό è balzato all’improvviso dalla sedia, è uscito dal Gambrinus come un diavolo dalla sua scatola, è passato in mezzo alla folla con il suo impermeabile, senza riguardi per cappellini da donna, velette, cappelli, fez e si trova in prima fila nel momento preciso del passaggio della limousine con l’uomo nero e l’uomo bruno che insieme e all’unisono hanno teso il braccio nella sua direzione. È allora che si è levata una voce dalla folla, tra due onde spasmodiche di DUCE! DUCE! DUCE! DUCE! DUCE! DUCE! «STA VERRENN’ SI FOR’ CHIOVE!...»
""", description2: " ", content2: "", audio: ""),
    Stop(title: "San Carlo", description: " ", content: " [...] E alle spalle di Mussolini e di Hitler che si allontanano con lenti giri di ruote, nel brusio che si placa, la folla di centinaia di individui che gravita intorno al Gambrinus ode l’impossibile a udirsi: La Marsigliese cantata a squarciagola e meravigliosamente accompagnata da rollii, vibrati, schiocchi di acuti, battiti di mani sulle casse panciute e sonore, La Marsigliese cantata quel giorno 5 maggio 1938, quel giorno di gloria, di forza, quel giorno gagliardo per l’unione di ferro, polvere e sangue tra la Germania nazista e l’Italia fascista, in quell’anno in cui le leggi razziali sono firmate dal Re Imperatore e applicate dal presidente del Tribunale razziale che le ha elucubrate, Gaetano Azzariti, La Marsigliese di cui si odono le note e si percepiscono alcune parole fino a piazza Trieste e Trento, fino al San Carlo, grazie al silenzio sbalordito che si crea a poco a poco tra la folla, La Marsigliese intonat e cantata con poche parole, secondo la sua maniera di costruire ebbre variazioni... ", description2: " ", content2: "", audio: ""),
    Stop(title: "Castel Dell'Ovo", description: "Tra le sue passeggiate notturne, Caccioppoli, attraverso la penna di Schifano, ci regala dei divertentissimi dialoghi con il suo animale di compagnia, il gallo, che in realtà svelano il profondo odio che ‘O genio nutriva per il fascismo.", content: "“Sai, l’ovra che è servita da modello a Himmler per creare la Gestapo... Nessuno che sia d’accordo su queste quattro lettere ‒ [...] è sicuramente una polizia segreta inventata dal duce, un acronimo per Organizzazione di Vigilanza e Repressione dell’Antifascismo, oppure Opera Volontaria di Repressione Antifascista, o ancora, ascolta cocco mio, non voltarti, Organo di Vigilanza delle Reazioni delittuose Anti-Stato... Sembra che non sia proprio niente di tutto ciò, e che Benito Mussolini abbia creato questa parola che deve restare misteriosa, quindi minacciosa, coniugando... Attenzione signora, attenzione, state per schiacciare la zampa del mio gallo, per favore, grazie!... Okhrana (polizia degli zar) e Piovra, e ora, anche se non hai mai visto nessuna piovra, capisci subito che è tentacolare oculare binoculare e, niente da fare, quando ti aspirano e ti paralizzano con le loro ventose... Una piovra, la Piovra, ti stringe il gozzo e non puoi più fare chicchirichì! ... Vieni, ti metto sul muretto fino a Castel dell’Ovo, se non ci acchiappano e ci portano via prima di girare per prendere il ponte... Sai, ti acchiappano sempre a una svolta... Non fare mai le svolte, se c’è una svolta, se puoi, vola via!... Be’, fintanto che sto con te, non ti spiumeranno, e neanche me del resto... Non fidarti delle brave persone, sono le peggiori!... O O O O... sì! Bravissimo! Bravissimo!... Bravissimo!... Finalmente un canto che non è fascista!...“", description2: "", content2: "", audio: "")
    
]

//
//  vmp_widget.swift
//  vmp_widget
//
//  Created by Abdul Nawaz Bugti on 05.05.2024.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    // Your list of dictionaries
    let data: [[String: String]] = [
        ["v_p": "abhängen von", "kasus": "+ D", "example": "Ob wir fahren, hängt vom Wetter ab."], ["v_p": "achten auf", "kasus": "+ A", "example": "Bitte achte auf den neuen Mantel."], ["v_p": "anfangen mit", "kasus": "+ D", "example": "Ich fange mit der Übung an."], ["v_p": "ankommen auf", "kasus": "+ A", "example": "Es kommt auf den richtigen Preis an."], ["v_p": "antworten auf", "kasus": "+ A", "example": "Bitte antworten Sie heute auf den Brief."], ["v_p": "sich ärgern über", "kasus": "+ A", "example": "Wir ärgern uns über den Regen."], ["v_p": "aufhören mit", "kasus": "+ D", "example": "Er hört um 17.00 Uhr mit der Arbeit auf."], ["v_p": "aufpassen auf", "kasus": "+ A", "example": "Ein Babysitter passt auf kleine Kinder auf."], ["v_p": "sich aufregen über", "kasus": "+ A", "example": "Deutsche regen sich über Unpünktlichkeit auf."], ["v_p": "ausgeben für", "kasus": "+ A", "example": "Manche geben viel Geld für Schuhe aus."], ["v_p": "sich bedanken bei", "kasus": "+ D", "example": "Ich bedanke mich herzlich bei dir."], ["v_p": "sich bedanken für", "kasus": "+ A", "example": "Martin bedankt sich für das Geschenk."], ["v_p": "beginnen mit", "kasus": "+ D", "example": "Wir beginnen pünktlich mit dem Deutschkurs."], ["v_p": "sich bemühen um", "kasus": "+ A", "example": "Karla bemüht sich um eine Arbeit."], ["v_p": "berichten über", "kasus": "+ A", "example": "Der Reporter berichtet über die Wahlen."], ["v_p": "sich beschäftigen mit", "kasus": "+ D", "example": "Ich beschäftige mich gern mit Pflanzen."], ["v_p": "sich beschweren bei", "kasus": "+ D", "example": "Der Gast beschwert sich beim Kellner."], ["v_p": "bestehen aus", "kasus": "+ D", "example": "Eheringe bestehen aus Gold."], ["v_p": "bestehen auf", "kasus": "+ D", "example": "Ich bestehe auf sofortiger Bezahlung des Autos."], ["v_p": "sich beteiligen an", "kasus": "+ D", "example": "Viele Studenten beteiligen sich an den Streiks."], ["v_p": "sich bewerben bei", "kasus": "+ D", "example": "Er bewirbt sich bei einer Bäckerei."], ["v_p": "sich bewerben um", "kasus": "+ A", "example": "Sie bewirbt sich um eine Stelle als Sekretärin."], ["v_p": "sich beziehen auf", "kasus": "+ A", "example": "Meine Frage bezieht sich auf Ihr Angebot."], ["v_p": "bitten um", "kasus": "+ A", "example": "Der Redner bittet um Aufmerksamkeit."], ["v_p": "danken für", "kasus": "+ A", "example": "Sam dankt für Ritas Hilfe."], ["v_p": "denken an", "kasus": "+ A", "example": "Maria denkt oft an den Urlaub."], ["v_p": "diskutieren über", "kasus": "+ A", "example": "Das Kabinett diskutiert über eine neue Steuer."], ["v_p": "einladen zu", "kasus": "+ D", "example": "Ich lade dich zu meinem Geburtstag ein."], ["v_p": "sich entscheiden für", "kasus": "+ A", "example": "Kinder entscheiden sich gern für Schokolade."], ["v_p": "sich entschließen zu", "kasus": "+ D", "example": "Karl entschließt sich zu einem Studium."], ["v_p": "sich entschuldigen bei", "kasus": "+ D", "example": "Tom entschuldigt sich bei ihrem Mann."], ["v_p": "sich entschuldigen für", "kasus": "+ A", "example": "Ich entschuldige mich für das Verhalten meiner Katze."], ["v_p": "sich erholen von", "kasus": "+ D", "example": "Von dem Schock muss ich mich erst erholen."], ["v_p": "sich erinnern an", "kasus": "+ A", "example": "Wir erinnern uns gern an unser erstes Ehejahr."], ["v_p": "erkennen an", "kasus": "+ D", "example": "Man erkennt Pinocchio an seiner langen Nase."], ["v_p": "sich erkundigen nach", "kasus": "+ D", "example": "Oma erkundigt sich oft nach meinen Plänen."], ["v_p": "erschrecken über", "kasus": "+ A", "example": "Der Koch erschrickt über eine Maus."], ["v_p": "erzählen über", "kasus": "+ A", "example": "Ein Ostberliner erzählt über sein Leben in der ehemaligen DDR."], ["v_p": "erzählen von", "kasus": "+ D", "example": "Der Bischoff erzählt von der Reise nach Rom."], ["v_p": "fragen nach", "kasus": "+ D", "example": "Die Journalistin fragt nach den Konsequenzen der"], ["v_p": "sich freuen auf", "kasus": "+ A", "example": "Kinder freuen sich auf die Ferien."], ["v_p": "sich freuen über", "kasus": "+ A", "example": "Jeder freut sich über eine Gehaltserhöhung."], ["v_p": "gehen um", "kasus": "+ A", "example": "Immer geht es um Geld."], ["v_p": "gehören zu", "kasus": "+ D", "example": "Das Elsass gehört zu Frankreich."], ["v_p": "sich gewöhnen an", "kasus": "+ A", "example": "Ich kann mich nicht an die Zeitumstellung gewöhnen."], ["v_p": "glauben an", "kasus": "+ A", "example": "Teenager glauben an die große Liebe."], ["v_p": "gratulieren zu", "kasus": "+ D", "example": "Wir gratulieren dir zum 18. Geburtstag."], ["v_p": "halten für", "kasus": "+ A", "example": "Ich halte das für keine gute Idee."], ["v_p": "halten von", "kasus": "+ D", "example": "Kinder halten nicht viel von Ordnung."], ["v_p": "sich handeln um", "kasus": "+ A", "example": "Bei der Kopie handelt es sich nicht um Originalsoftware."], ["v_p": "handeln von", "kasus": "+ D", "example": "Märchen handeln von Gut und Böse."], ["v_p": "helfen bei", "kasus": "+ D", "example": "Kann ich dir beim Tischdecken helfen?"], ["v_p": "hindern an", "kasus": "+ D", "example": "Ein langsamer Fahrer hindert Greta am Überholen."], ["v_p": "hoffen auf", "kasus": "+ A", "example": "Im März hoffen alle auf warme Frühlingstage."], ["v_p": "hören von", "kasus": "+ D", "example": "Ich habe seit Sonntag nichts von Piet gehört."], ["v_p": "sich informieren über", "kasus": "+ A", "example": "Auf der Messe kann man sich über die neue Technologie"], ["v_p": "sich interessieren für", "kasus": "+ A", "example": "Monika interessiert sich für ein Smartphone."], ["v_p": "klagen über", "kasus": "+ A", "example": "Tim klagt häufig über Kopfschmerzen."], ["v_p": "kämpfen für", "kasus": "+ A", "example": "Die Gewerkschaft kämpft für höhere Löhne."], ["v_p": "kommen zu", "kasus": "+ D", "example": "In der Besprechung kam es zu einem Streit."], ["v_p": "sich konzentrieren auf", "kasus": "+ A", "example": "Karl konzentriert sich auf seine Hausaufgaben."], ["v_p": "sich kümmern um", "kasus": "+ A", "example": "Im Pflegeheim kümmert man sich um alte Leute, die krank sind."], ["v_p": "lachen über", "kasus": "+ A", "example": "Über einen guten Witz muss man laut lachen."], ["v_p": "leiden an", "kasus": "+ D", "example": "Jeder fünfte Manager leidet an Burn-out."], ["v_p": "leiden unter", "kasus": "+ D", "example": "Kaffeetrinker leiden unter Schlafproblemen."], ["v_p": "nachdenken über", "kasus": "+ A", "example": "Beamte müssen nicht über ihre Rente nachdenken."], ["v_p": "protestieren gegen", "kasus": "+ A", "example": "Viele Menschen protestieren gegen Atomkraft."], ["v_p": "rechnen mit", "kasus": "+ D", "example": "Im Januar muss man mit Schnee rechnen."], ["v_p": "reden über", "kasus": "+ A", "example": "Deine Mutter redet gern über Krankheiten."], ["v_p": "reden von", "kasus": "+ D", "example": "Großvater redet von den guten alten Zeiten."], ["v_p": "riechen nach", "kasus": "+ D", "example": "Hier riecht es nach Kuchen."], ["v_p": "sagen über", "kasus": "+ A", "example": "Brigitte sagt über Dietmar, dass er oft lügt."], ["v_p": "sagen zu", "kasus": "+ D", "example": "Was sagst du zu meinem neuen Haarschnitt?"], ["v_p": "schicken an", "kasus": "+ A", "example": "Die E-Mail schicke ich dir morgen."], ["v_p": "schicken zu", "kasus": "+ D", "example": "Der Allgemeinmediziner schickt den Patienten zu einem"], ["v_p": "schimpfen über", "kasus": "+ A", "example": "Alle schimpfen über den Regen."], ["v_p": "schmecken nach", "kasus": "+ D", "example": "Muscheln schmecken nach Meerwasser."], ["v_p": "schreiben an", "kasus": "+ A", "example": "Bitte schreibe noch heute an deine Mutter."], ["v_p": "sich schützen vor", "kasus": "+ D", "example": "Den Computer muss man vor Hackern schützen."], ["v_p": "sein für", "kasus": "+ A", "example": "Ich bin für die Abschaffung der Kinderarbeit."], ["v_p": "sein gegen", "kasus": "+ A", "example": "Viele sind gegen Steuererhöhungen."], ["v_p": "sorgen für", "kasus": "+ A", "example": "Kinder müssen im Alter für ihre Eltern sorgen."], ["v_p": "sprechen mit", "kasus": "+ D", "example": "Ich spreche noch einmal mit deinem Vater."], ["v_p": "sprechen über", "kasus": "+ A", "example": "Lass uns über deine Zukunft sprechen."], ["v_p": "sterben an", "kasus": "+ D", "example": "Zwei Deutsche sind an der Grippe gestorben."], ["v_p": "streiten mit", "kasus": "+ D", "example": "Ich möchte nicht mit dir streiten."], ["v_p": "streiten über", "kasus": "+ A", "example": "Die USA und Deutschland streiten über eine neue Strategie."], ["v_p": "teilnehmen an", "kasus": "+ D", "example": "Nordkorea nimmt an der Fußball-WM teil."], ["v_p": "telefonieren mit", "kasus": "+ D", "example": "Hast du schon mit dem Arzt telefoniert?"], ["v_p": "sich treffen mit", "kasus": "+ D", "example": "Die Kanzlerin trifft sich täglich mit ihrem Pressesprecher."], ["v_p": "sich treffen zu", "kasus": "+ D", "example": "Sie treffen sich nur zu einem kurzen Gespräch."], ["v_p": "überreden zu", "kasus": "+ D", "example": "Kann ich dich zu einem Glas Wein überreden?"], ["v_p": "sich unterhalten mit", "kasus": "+ D", "example": "Der Sänger unterhält sich mit dem Bassisten."], ["v_p": "sich unterhalten über", "kasus": "+ A", "example": "Die Modedesigner unterhalten sich über die neuesten Trends."], ["v_p": "sich verabreden mit", "kasus": "+ D", "example": "Heute verabrede ich mich mit einer Freundin."], ["v_p": "sich verabschieden von", "kasus": "+ D", "example": "Nun wollen wir uns von euch verabschieden."], ["v_p": "vergleichen mit", "kasus": "+ D", "example": "Vergleichen Sie München mit Berlin."], ["v_p": "sich verlassen auf", "kasus": "+ A", "example": "Auf mich kann man sich verlassen."], ["v_p": "sich verlieben in", "kasus": "+ A", "example": "Britta hat sich in das alte Bauernhaus verliebt."], ["v_p": "sich verstehen mit", "kasus": "+ D", "example": "Daniel versteht sich gut mit seinem Chef."], ["v_p": "verstehen von", "kasus": "+ D", "example": "Verstehst du etwas von Elektrik?"], ["v_p": "sich vorbereiten auf", "kasus": "+ A", "example": "Karl bereitet sich auf eine Präsentation vor."], ["v_p": "warnen vor", "kasus": "+ D", "example": "Man hatte ihn vor den hohen Kosten für das alte Auto"], ["v_p": "warten auf", "kasus": "+ A", "example": "Hier wartet man lange auf einen Bus."], ["v_p": "sich wenden an", "kasus": "+ A", "example": "Bitte wenden Sie sich an die Buchhaltung."], ["v_p": "werden zu", "kasus": "+ D", "example": "Unter null Grad wird Wasser zu Eis."], ["v_p": "wissen von", "kasus": "+ D", "example": "Ich weiß nichts von neuen Computern für unser Team."], ["v_p": "sich wundern über", "kasus": "+ A", "example": "Viele Deutsche wundern sich über die plötzlich so hohen"], ["v_p": "zuschauen bei", "kasus": "+ D", "example": "Kann ich dir bei der Reparatur zuschauen?"], ["v_p": "zusehen bei", "kasus": "+ D", "example": "Willst du mir beim Kochen zusehen?"], ["v_p": "zweifeln an", "kasus": "+ D", "example": "John zweifelt daran, dass sein Sohn die Wahrheit gesagt hat."]
    ]
    
    // Function to generate the next entry
    func getNextEntry(completion: @escaping (SimpleEntry) -> Void) {
        let currentDate = Date()
        let entry = SimpleEntry(date: currentDate, data: randomData())
        completion(entry)
    }
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), data: randomData())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), data: randomData())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        let currentDate = Date()

        // Calculate the next update date, 5 seconds from the current date
        let nextUpdateDate = Calendar.current.date(byAdding: .second, value: 5, to: currentDate)!
        
        // Generate the entry with random data
        let entry = SimpleEntry(date: nextUpdateDate, data: randomData())

        // Create a timeline that repeats every 5 seconds
        let timeline = Timeline(entries: [entry], policy: .after(nextUpdateDate))
        completion(timeline)
    }
    
    // Function to randomly select data from the list
    private func randomData() -> [String: String] {
        return data.randomElement() ?? [:]
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let data: [String: String]
}

struct vmp_widgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            Text(entry.data["v_p"] ?? "")
                .fontWeight(.bold)
                .font(.body)
            Text(entry.data["example"] ?? "")
                .font(.caption)
            Text(entry.data["kasus"] ?? "")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .containerBackground(.fill.tertiary, for: .widget)
    }
}

struct vmp_widget: Widget {
    let kind: String = "vmp_widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            vmp_widgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge, .systemExtraLarge, .accessoryRectangular])
    }
}

struct vmp_widget_Previews: PreviewProvider {
    static var previews: some View {
        // Create the first entry with the initial data
        let initialEntry = SimpleEntry(date: Date(), data: ["v_p": "sich treffen zu", "example": "Sie treffen sich nur zu einem kurzen Gesprach", "kasus": "+D"])
        
        // Use the initial entry in the widget entry views
        vmp_widgetEntryView(entry: initialEntry)
            .previewContext(WidgetPreviewContext(family: .accessoryRectangular))
    }
}

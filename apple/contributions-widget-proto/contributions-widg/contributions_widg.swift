//
//  contributions_widg.swift
//  contributions-widg
//
//  Created by Kilo Loco on 1/27/21.
//

import Combine
import SwiftUI
import WidgetKit

struct ContributionGraphEntry: TimelineEntry {
    let date: Date
    let days: [Contribution]
}

struct Provider: TimelineProvider {
    
    private var dummyEntry: ContributionGraphEntry {
        let now = Date()
        let days = (0 ..< 119).map { index -> Contribution in
            let date = Calendar.current.date(byAdding: .day, value: -index, to: now)!
            return Contribution(date: date, dataCount: 0)
        }
        return ContributionGraphEntry(date: now, days: days)
    }
    
    func placeholder(in context: Context) -> ContributionGraphEntry { dummyEntry  }
    
    func getSnapshot(in context: Context, completion: @escaping (ContributionGraphEntry) -> Void) {
        completion(dummyEntry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<ContributionGraphEntry>) -> Void) {
        print("get timeline")
        GitHubParser.getDevelopmentDays(for: "kilo-loco") { days in
            print("receive value")
            let entry = ContributionGraphEntry(date: Date(), days: days)
            let timeline = Timeline(
                entries: [entry],
                policy: .after(
                    Calendar.current.date(byAdding: .day, value: 1, to: Date())!
                )
            )
            completion(timeline)
        }
    }
    
}

struct PlaceholderView: View {
    var body: some View {
        Color.gray.padding()
    }
}

struct WidgetEntryView: View {
    let entry: Provider.Entry
    
    var body: some View {
        ContributionsGraph(days: entry.days, selectedDay: {_ in})
    }
}

@main
struct ContributionsWidget: Widget {
    private let kind = "contributions_widg"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium])
    }
}



























//
//struct Provider: IntentTimelineProvider {
//    func placeholder(in context: Context) -> SimpleEntry {
//        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
//    }
//
//    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
//        let entry = SimpleEntry(date: Date(), configuration: configuration)
//        completion(entry)
//    }
//
//    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
//        var entries: [SimpleEntry] = []
//
//        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
//        let currentDate = Date()
//        for hourOffset in 0 ..< 5 {
//            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
//            let entry = SimpleEntry(date: entryDate, configuration: configuration)
//            entries.append(entry)
//        }
//
//        let timeline = Timeline(entries: entries, policy: .atEnd)
//        completion(timeline)
//    }
//}
//
//struct SimpleEntry: TimelineEntry {
//    let date: Date
//    let configuration: ConfigurationIntent
//}
//
//struct contributions_widgEntryView : View {
//    var entry: Provider.Entry
//
//    var body: some View {
//        Text(entry.date, style: .time)
//    }
//}
//
//@main
//struct contributions_widg: Widget {
//    let kind: String = "contributions_widg"
//
//    var body: some WidgetConfiguration {
//        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
//            contributions_widgEntryView(entry: entry)
//        }
//        .configurationDisplayName("My Widget")
//        .description("This is an example widget.")
//    }
//}
//
//struct contributions_widg_Previews: PreviewProvider {
//    static var previews: some View {
//        contributions_widgEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
//}

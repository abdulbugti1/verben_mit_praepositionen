//
//  vmp_widgetLiveActivity.swift
//  vmp_widget
//
//  Created by Abdul Nawaz Bugti on 05.05.2024.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct vmp_widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct vmp_widgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: vmp_widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension vmp_widgetAttributes {
    fileprivate static var preview: vmp_widgetAttributes {
        vmp_widgetAttributes(name: "World")
    }
}

extension vmp_widgetAttributes.ContentState {
    fileprivate static var smiley: vmp_widgetAttributes.ContentState {
        vmp_widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: vmp_widgetAttributes.ContentState {
         vmp_widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: vmp_widgetAttributes.preview) {
   vmp_widgetLiveActivity()
} contentStates: {
    vmp_widgetAttributes.ContentState.smiley
    vmp_widgetAttributes.ContentState.starEyes
}

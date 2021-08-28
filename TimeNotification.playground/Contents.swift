import UIKit

let exampleDate = Date().addingTimeInterval(-15000)

func getTimeNotification(date: Date) -> String {

    let formatter = RelativeDateTimeFormatter()
    formatter.unitsStyle = .full
    let relativeDate = formatter.localizedString(for: exampleDate, relativeTo: Date())
    
    if relativeDate == "in 0 seconds" {
        return "now"
    } else {
        return relativeDate
    }
}

print(getTimeNotification(date: exampleDate))

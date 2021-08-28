import UIKit

/* function to compare a given time with current time and return a string stating the difference example 5 minutes ago */

/* link - https://www.hackerearth.com/problem/algorithm/time-ago-4a75f1d1-796bce68/ */

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

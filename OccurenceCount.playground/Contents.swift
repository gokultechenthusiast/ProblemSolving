import UIKit

var exampleString = "occurences"

func getCountOccurence(inputString: String) -> String {
    var outputString = ""
    
    for char in inputString {
        if !outputString.contains(char){
            var count = 0
            for char2 in inputString {
                if char.lowercased() == char2.lowercased() {
                    count += 1
                }
            }
            outputString += "\(char.lowercased())"+String(count)
        }
    }
    
    return outputString
}

print(getCountOccurence(inputString: exampleString))

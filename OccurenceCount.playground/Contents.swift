import UIKit
/* function to count the occurence of each count of letters in a string and return a string in such a way letter and occurence count of that letter will be there in output */

/* link - https://www.hackerearth.com/practice/data-structures/hash-tables/basics-of-hash-tables/practice-problems/algorithm/count-occurrences-2-880cf6bd/ */

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

import UIKit

var exampleString = "HiGokul"

func getSnakeCase(inputString: String) -> String {
    var outputString = ""
    let uppercaseLetters = CharacterSet.uppercaseLetters
    if inputString.rangeOfCharacter(from: uppercaseLetters) != nil {
        var count = 0
        for char in inputString {
            if char.isUppercase {
                
                if count == 0 {
                    outputString += String(char).lowercased()
                } else {
                    outputString += "_\(char.lowercased())"
                }
            } else {
                outputString += String(char)
            }
            count += 1
        }
        return outputString
    } else {
        return inputString
    }
}

print(getSnakeCase(inputString: exampleString))

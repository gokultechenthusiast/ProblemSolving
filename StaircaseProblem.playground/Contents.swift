import UIKit

/*
 Here a count will be given and have to print '#' based on the
 count like a stair case.
*/

func stairCase(number: Int) {
    for i in 1..<number+1 {
        var tempString = ""
        for _ in 1..<(number-i)+1 {
            tempString += " "
        }
        for _ in 1...i {
            tempString += "#"
        }
        print("\(tempString)")
    }
}

stairCase(number: 8)

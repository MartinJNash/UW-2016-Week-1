//: Playground - noun: a place where people can play

import UIKit


let bigTextFont =  UIFont.boldSystemFontOfSize(172)
let smallTextFont = UIFont.systemFontOfSize(24)

let attributes: [String: AnyObject] = [
    NSFontAttributeName: bigTextFont,
//    NSStrokeColorAttributeName : UIColor.orangeColor(),
//    NSStrokeWidthAttributeName : -3,
    NSForegroundColorAttributeName : UIColor.blackColor()
]
let myString = NSMutableAttributedString(string: "🌍 Hello 🌍", attributes: attributes)


var numberAttributes = attributes
numberAttributes[NSFontAttributeName] = smallTextFont
numberAttributes[NSBaselineOffsetAttributeName] = ceil(bigTextFont.capHeight) - ceil(smallTextFont.ascender)


let numberString = NSAttributedString(string: "(123.4)", attributes: numberAttributes)
myString.appendAttributedString(numberString)


let basicString = myString.string
let fullBasicStringRange = basicString.startIndex..<basicString.endIndex

basicString.enumerateSubstringsInRange(fullBasicStringRange, options: [NSStringEnumerationOptions.ByComposedCharacterSequences]) { (substring, substringRange, enclosingRange, stopper) in
    
    if let realString = substring {

        let vowels = ["a", "e", "i", "o", "u"]
        if vowels.contains(realString) {
            
            let coloredVowelAttributes: [String: AnyObject] = [
                NSForegroundColorAttributeName: UIColor.redColor()
            ]
            
            let start = basicString.startIndex.distanceTo(substringRange.startIndex)
            let end = basicString.startIndex.distanceTo(substringRange.endIndex)
            let length = end-start

            let rr = NSMakeRange(start, length)
            myString.addAttributes(coloredVowelAttributes, range: rr)

            
            
        }
        
    }
    
    
    
}


print(String("Hello".utf8.reverse()))


myString



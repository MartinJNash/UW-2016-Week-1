//: Playground - noun: a place where people can play

import UIKit


protocol PageAppearance {
    var backgroundColor: UIColor { get }
    var headlineTextColor: UIColor { get }
    var headlineFont: UIFont { get }
}

struct StandardPageAppearance: PageAppearance {
    let backgroundColor: UIColor = UIColor.darkGrayColor()
    let headlineTextColor: UIColor = UIColor.whiteColor()
    let headlineFont: UIFont = UIFont.systemFontOfSize(20)
}

struct ObnoxiousPageAppearance: PageAppearance {
    let backgroundColor: UIColor = UIColor.greenColor()
    let headlineTextColor: UIColor = UIColor.orangeColor()
    let headlineFont: UIFont = UIFont(name: "Comic Sans", size: 36)!
}




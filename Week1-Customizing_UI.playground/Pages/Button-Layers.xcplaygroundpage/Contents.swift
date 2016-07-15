import UIKit
import XCPlayground



let button = UIButton(type: .Custom)
button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)

let attributes : [String: AnyObject] = [
    NSForegroundColorAttributeName: UIColor.greenColor(),
    NSFontAttributeName: UIFont.boldSystemFontOfSize(36),
]

let attributedString = NSAttributedString(string: "Button", attributes: attributes)

//button.setTitle("Hello", forState: [.Normal])
//button.setTitleColor(.blackColor(), forState: [.Normal])

button.setAttributedTitle(attributedString, forState: [.Normal])
button.backgroundColor = .whiteColor()
//button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)

button.layer.borderWidth = 2
button.layer.cornerRadius = 10
button.layer.borderColor = UIColor.greenColor().CGColor
//button.sizeToFit()




let holderView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 400))
holderView.backgroundColor = .lightGrayColor()
holderView.addSubview(button)
button.center = CGPoint(x: holderView.bounds.midX, y: holderView.bounds.midY)

XCPlaygroundPage.currentPage.liveView = holderView



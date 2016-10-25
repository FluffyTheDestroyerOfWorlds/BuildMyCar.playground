//: Playground - noun: a place where people can play

import UIKit

enum model: String {
    case prius2 = "Prius 2"
    case prius2eco = "Prius 2 Eco"
    case prius3 = "Prius 3"
    case prius3tour = "Prius 3 Touring"
    case prius4 = "Prius 4"
    case prius4tour = "Prius 4 Touring"
}

enum color: String {
    case white = "Blizzard Pearl"
    case blue = "Blue Crush"
    case silver = "Classic Silver"
    case red = "Hypersonic Red62"
    case grey = "Magnetic Grey"
    case black = "Midnight Black"
    case green = "Sea Glass Pearl"
}

enum interior: String {
    case black = "Black"
    case beige = "Beige"
}

enum accessory: String {
    case bodySide = "Body Side Molding"
    case xbars = "Cross Bars"
    case doorEdge = "Door Edge Guards"
    case sides = "Rocker Panel Modlings"
    
    static var Everything: [accessory] = [.bodySide, .xbars, .doorEdge, .sides]
}


class car {
    var sModel : model
    var sColor: color
    var sInterior: interior
    var sAccessory : [accessory] = []
    
    init(sModel: model, sColor: color, sInterior: interior, sAccessory: [accessory]){
        self.sModel = sModel
		self.sColor = sColor
        self.sInterior = sInterior
        self.sAccessory = sAccessory
    }
 
	func printit() -> String {
		var sReturn = "";
		sReturn = "The \(self.sModel.rawValue) is going to be \(self.sColor.rawValue) with \(self.sInterior.rawValue) interior. Extras include: ";
		for x in self.sAccessory {
			sReturn.appendContentsOf(" *" + x.rawValue);
		}
		return sReturn;
	}
}




var myCar2 = car(sModel: .prius3tour, sColor: .blue, sInterior: .black, sAccessory: accessory.Everything);

myCar2.printit();


var myCar3 = car(sModel: .prius4, sColor: .grey, sInterior: .black, sAccessory: [.xbars]);

myCar3.printit();


var myCar4 = car(sModel: .prius2eco, sColor: .green, sInterior: .beige, sAccessory: [.sides, .doorEdge])

myCar4.printit();






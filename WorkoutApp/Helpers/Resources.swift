//
//  Resources.swift
//  WorkoutApp
//
//  Created by Евгений Васильев on 07.11.2022.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var background = UIColor(hexString: "#F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview")
            static var session = UIImage(named: "session")
            static var progress = UIImage(named: "progress")
            static var settings = UIImage(named: "settings")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with mySize: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: mySize) ?? UIFont()
        }
    }
    
    
}

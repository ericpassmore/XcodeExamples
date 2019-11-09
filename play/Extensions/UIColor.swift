//
//  UIColor.swift
//  play
//
//  Created by Eric Passmore on 11/9/19.
//  Copyright © 2019 OK2Save. All rights reserved.
//

import UIKit
extension UIColor{
    //Colors are computed class properties. To refrence the class, use self
    class var primary:UIColor{
        return self.init(red:1.0,green:196/255,blue:0,alpha: 1.0)
    }
    class var darkPrimary:UIColor{
        return self.init(red:199/255,green:94/255,blue:0,alpha: 1.0)
    }
    class var accent:UIColor{
        return self.init(red:0,green:196/255,blue:1.0,alpha: 1.0)
    }
    class var navBlack:UIColor{
        return self.init(red:33/255,green:33/255,blue:33/255,alpha: 1.0)
    }
    class var grey:UIColor{
        return self.init(red:127/255,green:127/255,blue:127/255,alpha: 1.0)
    }
    class var delete:UIColor{
        return self.init(red:1.0,green:59/255,blue:0,alpha: 1.0)
    }
    class var mwhite:UIColor{
        return self.init(red:1.0,green:1.0,blue:1.0,alpha: 1.0)
    }
}

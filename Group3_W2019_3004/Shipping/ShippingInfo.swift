//
//  ShippingInfo.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class  ShippingInfo:IDisplay{
    enum shippingTypes
    {
        case Standard
        case Express
    }
    var shippingID:Int!
    var getshippingID:Int!
    {
        get{
            return shippingID
        }
        set{
            shippingID = newValue
        }
    }
    var shippingType=shippingTypes.Standard
    var shippingCost:Float{
        var finalOrderTotal:Float = 0.0
        if(shippingType==shippingTypes.Standard){
            finalOrderTotal = 2.25
        }else{
            finalOrderTotal = 4.55
        }
        return finalOrderTotal
    }
    //Computed Property : Order Total
    var shippingRegionID:String!
    
    init()
    {
        self.shippingID = 0
        self.shippingRegionID = String()
    }
    
    init(shippingID: Int, shippingType: shippingTypes, shippingRegionID: String )
    {
        self.shippingID = shippingID
        self.shippingType = shippingType
        self.shippingRegionID = shippingRegionID
    }
    
    func display() {
        print("\nShipping Details \n--------------------------------------------------------------")
        print("Shipping ID:\(self.shippingID!) Shipping Type:\(self.shippingType) Shipping Cost:\(self.shippingCost.currency()) Shipping Region:\(self.shippingRegionID!)")
        
    }
    
    func updateShippingInfo(shippingId: Int, shippingType: shippingTypes, shippingRegionId: String) {
        self.shippingID = shippingId
        self.shippingType = shippingType
        self.shippingRegionID = shippingRegionId
    }
    
}

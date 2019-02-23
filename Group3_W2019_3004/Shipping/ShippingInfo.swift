//
//  ShippingInfo.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class  ShoppingInfo{
    var shippingID:Int?
    var shippingType:String?
    var shippingCost:String?
    var shippingRegionID:String?
     init()
    {
        self.shippingID = 0
        self.shippingType =  String()
        self.shippingCost =  String()
        self.shippingRegionID = String()
     }
    
    init(shippingID: Int, shippingType: String, shippingCost: String, shippingRegionID: String)
    {
        self.shippingID = shippingID
        self.shippingType = shippingType
        self.shippingCost =  shippingCost
        self.shippingRegionID = shippingRegionID
        
    }
    
    func display() {
        print(self.shippingID!,self.shippingType!,self.shippingCost!,self.shippingRegionID!)
        
    }
    
    func updateShippingInfo(){
        
        
    }
    
}

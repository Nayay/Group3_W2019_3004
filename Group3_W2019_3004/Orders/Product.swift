//
//  Product.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation

struct Product{
    
    var productID:Int!
    var getProductID:Int!
    {
        get{
            return productID
        }
        set{
            productID = newValue
        }
    }
    var productName:String!
    var ProductName: String!
    {
        get
        {
            return productName
        }
        set
        {
            productName = newValue
        }
    }
    private var unitCost:Float!
    var UnitCost:Float!
    {
        get{
            return unitCost
        }
        set
        {
            unitCost = newValue
        }
    }
    
    init(productId:Int,productName:String,unitCost:Float) {
        self.productID = productId
        self.productName = productName
        self.unitCost = unitCost
    }
    //add quantity checks later
    func display()
    {
        print("--------------------------------------------------------------------")
        print("Product Id: ",self.productID!," Product Name: ",self.productName!," Product Price: ",self.unitCost! )
        
        
    }
    
}


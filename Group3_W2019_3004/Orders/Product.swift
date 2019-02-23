//
//  Product.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation

class Product {
    
    var productId:Int?
    var productName:String?
    private var unitCost:Float?
    var getProductUnitCost:Float?
    {
        get{
            return unitCost
        }
    }
    private var quantity:Int?
    var getProductQuantity:Int?
    {
        get{
            return quantity
        }
    }
    init(productId:Int,productName:String,unitCost:Float,quantity:Int) {
        self.productId = productId
        self.productName = productName
        self.unitCost = unitCost
        self.quantity = quantity
        
    }
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity! + newQuantity
    }
    func display()
    {
        print(self.productId!,self.productName!,self.unitCost!.currency(), self.quantity!, separator:"\t")
        
    }
    
}


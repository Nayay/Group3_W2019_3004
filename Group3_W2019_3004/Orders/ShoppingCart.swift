//
//  ShoppingCart.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class ShoppingCart
{
    var cartID:Int?
    var productID:Int?
    var quantity:Int?
    var dateAdded:String?
    
    init()
    {
        self.cartID = 0
        self.productID = 0
        self.quantity = 0
        self.dateAdded = String()
        
    }
    
    init(cartID: Int, productID: Int, quantity:Int, dateAdded:String )
    {
        self.cartID = cartID
        self.productID = productID
        self.quantity = quantity
        self.dateAdded = dateAdded
        
    }
    func display() {
        print(self.cartID!, self.productID!,self.quantity!,self.dateAdded!)
    }
    
    func addCartItem(){
        
    }
    func updateQuantity(){
        
        
    }
    func viewCardDetails(){
        
    }
    
    func checkout(){
        
    }
    
}


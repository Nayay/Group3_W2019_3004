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
   var arrayProducts:[Product] = [Product]()
 //   var productID:Int?
//    var quantity:Int?
    var dateAdded:Date = Date()
    

    
    init?(cartID: Int, dateAdded:Date, arrayProducts:[Product])
    {
        self.cartID = cartID
        self.dateAdded = dateAdded
        self.arrayProducts = arrayProducts
    }
    func display() {
        print("****************************************************************")
        print("Cart Id: \(self.cartID!) Date Added: \(self.dateAdded.getForamttedDate())")
        for product in self.arrayProducts {
            product.display()
        }
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


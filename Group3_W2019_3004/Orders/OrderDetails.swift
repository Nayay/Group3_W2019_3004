//
//  OrderDetails.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class OrderDetails   
{
    var orderID:Int!
    var cartDetails:[ShoppingCart]
    //Computed Property : Sub Total
   var subTotal:Float{
    var finalSubTotal=0.0
       for product in cartDetails {
        finalSubTotal = finalSubTotal + Double((Float(product.quantity!) * product.productID!.UnitCost))
              }
    return Float(finalSubTotal)
    }
   
    init(orderID:Int, cartDetails: [ShoppingCart] ){
        self.orderID = orderID
        self.cartDetails=cartDetails
    }
    
    func display() {
        print("Order DetailsID: \(self.orderID!) Sub-Total: \(self.subTotal.currency())")
        for i in cartDetails
        {
             print("\nOrder Details \n--------------------------------------------------------------")
            print("Cart ID: \(i.cartID!) Product ID: \(i.productID!.getProductID!) Product Name: \(i.productID!.ProductName!) Quantity: \(i.quantity!) Unit Cost: \(i.productID!.UnitCost!.currency()) ")
        }
        print(" \n--------------------------------------------------------------")
        print("Total Price: \(calcPrice())")
    }
    
    func calcPrice()->String{
        return self.subTotal.currency()
    }
    
}


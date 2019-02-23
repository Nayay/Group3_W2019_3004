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
    var orderID:Int?
   
    var arrayProducts:[Product] = [Product]()
    
    //Computed Property : Sub Total
    
    var subTotal:Float{
        
        var finalSubTotal:Float = 0.0
        
        for product in arrayProducts {
            
            finalSubTotal = finalSubTotal + (product.getProductUnitCost! * Float(product.getProductQuantity!))
        }
        return finalSubTotal
    }
    
    init()
    {
        self.orderID = 0
    }    
    
    init(orderID:Int,arrayProducts:[Product]) {
        self.orderID = orderID
        self.arrayProducts = arrayProducts
        }
    
    func display() {
        print(self.orderID!,self.subTotal)
    }
    func calcPrice(){
        
        
    }
    
}


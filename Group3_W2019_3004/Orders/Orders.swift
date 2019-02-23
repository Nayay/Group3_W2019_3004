//
//  Orders.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class Orders{
   
    var orderID:Int?
    var dateCreated:String?
    var dateShipped:String?
    var customerName:String?
    var customerID:Int?
    var status:String?
    var shippingID:String?
    init()
        {
        self.orderID = 0
        self.dateCreated =  String()
        self.dateShipped =  String()
        self.customerName = String()
        self.customerID =  0
        self.status =  String()
        self.shippingID = String()
    }
    init(orderID: Int, dateCreated: String, dateShipped: String, customerName: String, customerID: Int, status: String, shippingID: String )

    {
        self.orderID = orderID
        self.dateCreated =  dateCreated
        self.dateShipped =  dateShipped
        self.customerName = customerName
        self.customerID =  customerID
        self.status =  status
        self.shippingID = shippingID
        
    }
    
    func display() {
print(self.orderID!,self.dateCreated!,self.dateShipped!,self.customerName!,self.customerID!,self.status!,self.shippingID!)
    }
    
    
    
    
    
    func placeOrder(){
        
        
        
    }
    
}


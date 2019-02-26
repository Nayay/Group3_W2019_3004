//
//  Orders.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//
import Foundation
class Orders:IDisplay{
    enum OrderStatus
    {
        case Processing
        case Delivered
    }
    
    var orderID:Int!
    var getOrderID:Int!
    {
        get{
            return orderID
        }
    }
    
    var dateCreated:Date = Date()
    var dateShipped:Date = Date()
    var customerName:Customer!
    var customerID:Customer!
    var status=OrderStatus.Processing
    var shippingID:ShippingInfo!
    
    init(orderID: Int, dateCreated: Date, dateShipped: Date,customerID: Customer, customerName: Customer, shippingID: ShippingInfo)
        
    {
        self.orderID = orderID
        self.dateCreated =  dateCreated
        self.dateShipped =  dateShipped
        self.customerName = customerName
        self.customerID =  customerID
        self.shippingID = shippingID
    }
    
    func display() {
        print("\nOrder  \n--------------------------------------------------------------")
        print("Order ID: \(self.orderID!) Date Created: \(self.dateCreated) Date Shipped: \(self.dateShipped) \nCustomer ID: \(String(describing: self.customerID!.getcustomerID!)) Customer Name: \(String(describing: self.customerName!.getcustomerName!)) Order Status: \(self.status) Shipping Id: \(self.shippingID!.getshippingID!)")
    }
    
    func placeOrder(){
       self.status = OrderStatus.Delivered
    }
    
}


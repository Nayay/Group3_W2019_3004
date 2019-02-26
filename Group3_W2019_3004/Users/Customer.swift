//
//  Customer.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//


import Foundation

class Customer:User
{
    var customerName:String!
    var getcustomerName:String!
    {
        get{
            return customerName
        }
    }
    var customerID:Int!
    var getcustomerID:Int!
    {
        get{
            return customerID
        }
    }
    var address:String!
    var email:String!
    var creaditCardInfo : String!
    var shippingInfo:String!
    var shoppingCart: [ShoppingCart]
    
    override init()
    {
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creaditCardInfo = String()
        self.shippingInfo = String()
        self.shoppingCart = [ShoppingCart]()
        super.init()
    }
    
    
    
    
    func register(customerID: Int, customerName: String, address: String,email: String,shippingInfo: String,creaditCardInfo: String, userID: String, password: String)throws {
        if customerName.count < 4
        {
            throw OMSError.Invalid(" Customer Name must be greater 10 digits")
            
        }
        if email.count < 6
        {
            throw OMSError.Invalid("Customer Email ID must be greater 6 digits")
        }
        if !email.isValidEmail()
        {
            throw OMSError.Invalid("Invalid Student Email ID")
        }
        self.customerID = customerID
        self.customerName = customerName
        self.address = address
        self.email = email
        self.shippingInfo = shippingInfo
        super.userID = userID
        super.password = password
        super.verify()
    }
    func login()throws{
        if(super.loginStatus==User.LoginStatus.Valid) {
            print("\n\n**********************")
            print("*Welcome \(String(describing: self.customerName!))*")
            print("**********************")
        }
        else{
            throw OMSError.Invalid("Customer Satus Invaid")
        }
        
    }
        func updateProfile(customers:[Customer]) throws
        {
            //Validate customer.userId and customer.password in customers
            for customer in customers
            {
                if customer.userID == self.userID
                {
                    customer.customerName = self.customerName
                    customer.address = self.address
                    customer.email = self.email
                    customer.shippingInfo = self.shippingInfo
                    customer.creaditCardInfo = self.creaditCardInfo
                    print("---------------Profile Updated---------------")
                    customer.display()
                   
                }
                else{
                    throw OMSError.Invalid("User Info not updated")
                }
                
            }
           
        }
        
  
    
    override func display() {
        
        super.display()
        print("\nCustomer Details \n--------------------------------------------------------------")
        print("Customer ID: \(self.customerID!) Customer Name: \(self.customerName!) Address: \(self.address!) \nE-Mail \(self.email!) Shipping Information: \(self.shippingInfo!)")
        
    }
    
}

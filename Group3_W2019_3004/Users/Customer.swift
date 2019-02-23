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
    var customerName:String?
    var address:String?
    var email:String?
    var shoppingInfo:String?
    
   override init()
    {
        super.init()
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.shoppingInfo = String()
     }
    init?(userID: String, password: String, customerName: String, address: String,email: String,shoppingInfo: String)
     {
        super.init(userID: userID, password: password)
        self.customerName = customerName
        self.address = address
        self.email = email
        self.shoppingInfo = shoppingInfo
        if customerName.count < 4
        {
            print("Customer Name must be greater 10 digits")
            return nil
            
        }
         if email.count < 6
         {
            print("Customer Email ID must be greater 6 digits")
           return nil
        }
        if !email.isValidEmail()
        {
            print("Invalid Student Email ID")
            return nil
        }
         if !password.isValidPassword()
        {
             print("Invalid Password format")
            return nil
         }
        
    }
    
    override func display() {
        super.display()
        print(self.customerName!, self.address!,self.email!, self.shoppingInfo!)
        
    }
    func register(){
        
    }
   func login(){
        
    }
    func updateProfile(){
        
    }
    
    
    
}

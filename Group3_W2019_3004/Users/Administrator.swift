//
//  Administrator.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation
class Administrator:User
    
{
    var adminName:String?
    var email:String?
    
    
    init?(userID: String, password: String, adminName: String, email: String) throws
    {
        try super.init(userID: userID, password: password)
        self.adminName = adminName
        self.email = email
        if !email.isValidEmail()
        {
            print("Invalid Admin Email ID")
            return nil
        }
        if adminName.count < 4
        {
            print("Admin Name must be greater 4 digits")
            return nil
        }
    }
    override func display(){
        
        super.display()
        print("Administrator Name: \(self.adminName!) E-masl: \(self.email!)")
    }
    func updateCatalog(products: [Product], updProduct:Product)->Bool{
//        func updateCatalog(prodID:Int,prodName:String,price:Float,quantity:Int) -> Bool {
//            for i in p{
//                if(i.getproductID == prodID){
//                    return false
//                }
//            }
//            p.append(Products(productId: prodID, productName: prodName, productQuantity: quantity, productPrice: price))
//            
        return true
    }
}


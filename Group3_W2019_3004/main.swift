//
//  main.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation

print("Hello, World!")

//anayay
var user1: User?
user1 = User(userID: "1", password: "Password$123")
user1?.verify()

if let u = user1
{
    print("User Object Created")
    u.display()
 }
var admin1: Administrator?
admin1 = Administrator(userID: "1", password: "Password123",  adminName: "Nayay", email: "snayay@gmail.com")
if let a = admin1    
{
print("User Object Created")
    a.display()
    
}
var customer1 : Customer?
customer1=Customer(userID: "1", password: "Password123", customerName: "Nayay", address: "681 hsr", email: "snayay@gmail.com", shoppingInfo: "Active Shopper")
customer1?.verify()
if let c = customer1
{
    print("Customer Object Created")
    c.display()
}

//CREATING PRODUCT OBJECTS
var p1:Product = Product.init(productId: 100, productName: "Hard Drive", unitCost: 120.0, quantity: 1)
var p2:Product = Product.init(productId: 200, productName: "ZIP Drive", unitCost: 90.0, quantity: 2)
var p3:Product = Product.init(productId: 300, productName: "Floppy Disk", unitCost: 50.0, quantity: 3)
var p4:Product = Product.init(productId: 400, productName: "Monitor", unitCost: 300.0, quantity: 4)
var p5:Product = Product.init(productId: 500, productName: "iPhone 7 Plus", unitCost: 1200.0, quantity: 2)


//CREATING ORDER 1
var shoppingCart: ShoppingCart?
shoppingCart = ShoppingCart(cartID: 1, dateAdded: "10-06-2010", arrayProducts: [p1,p2,p3])

shoppingCart?.display()

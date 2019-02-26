//
//  main.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation

//Add User
var user1 =  try User(userID: "1", password: "Password$123")
user1.verify()
user1.display()
var user3 =  try User(userID: "3", password: "Password$123")
user1.display()
//Adding a duplicate User
do{
    let user2 = try User(userID: "1", password: "Password$123")
    user2.display()
}catch let error{
print(error)
}
//Add Administrator
var admin1: Administrator?
admin1 = try Administrator(userID: "2", password: "Password123",  adminName: "Nayay", email: "snayay@gmail.com")
admin1?.display()

//CREATING PRODUCT OBJECTS
var p1:Product = Product.init(productId:100, productName: "Hard Drive", unitCost: 120.0)
var p2:Product = Product.init(productId:200, productName: "ZIP Drive", unitCost: 90.0)
var p3:Product = Product.init(productId:300, productName: "Floppy Disk", unitCost: 50.0)
var p4:Product = Product.init(productId:400, productName: "Monitor", unitCost: 300.0)
var p5:Product = Product.init(productId:500, productName: "iPhone 7 Plus", unitCost: 1200.0)
//Array of all the products
var products = [Product]()
products.append(p1)
products.append(p2)
products.append(p3)
products.append(p4)
products.append(p4)

//Array of Customer Class
var customers = [Customer]()
var customer1 = Customer()
var customer2 = Customer()
var customer3 = Customer()
//Register a customer
try customer1.register(customerID: 1001, customerName: "Nayay Sharma", address: "681 HSR Layout", email: "snayay@gmail.com", shippingInfo: "681 HSR Layout", creaditCardInfo: "657657657657657", userID: "1001", password: "NayaySharma123$")
try customer2.register(customerID: 1002,customerName: "Nayay Sharma", address: "681 HSR Layout", email: "snayay@gmail.com", shippingInfo: "681 HSR Layout", creaditCardInfo: "657657657657657", userID: "1003", password: "NayaySharma123$")
    customers.append(customer1)
//customers.append(cust2)
//Verifying customer login
do{
    try customer1.login()
}catch let error{
    print(error)
    
}
//Print all the customers
for customer in customers
{
    customer.display()
}
//Updating Customer Profile
do{
    customer1.customerName = "Nayayjeet Sharma"
    customer1.address = "699 HBR"
    try customer1.updateProfile(customers: customers)
    //Priniting Update customer Profile Information
    customer1.display()
    
}catch let error{
    print(error)
}
// Add products to Shopping Cart
    let cartProduct1 = ShoppingCart(cartID: 1, quantity: 1, productID: p1, dateAdded: Date())
    let cartProduct2 = ShoppingCart(cartID: 1, quantity: 2, productID: p5, dateAdded: Date())
    let cartProduct3 = ShoppingCart(cartID: 1, quantity: 3, productID: p3, dateAdded: Date())
cartProduct1!.addCartItem(customer: customer1)
cartProduct2!.addCartItem(customer: customer1)
cartProduct3!.addCartItem(customer: customer1)
print("\nCart Details \n--------------------------------------------------------------")
for products in customer1.shoppingCart
{
    products.display()
}
//Update Product Quantity
var cartStatus=cartProduct3!.updateQuantity(customer: customer1, productID:100,newQuantity: 20)
if(cartStatus){
    print("Product Quantity updated sucessfully")
}else{
    print("Product ID not in Cart")
}



//Add Shipping Details
var shippingDetails = ShippingInfo(shippingID: 10, shippingType: ShippingInfo.shippingTypes.Express, shippingRegionID: "Quebec")
shippingDetails.display()

//Add Orders and validate shipping details
var order1 = Orders(orderID: 11, dateCreated: Date(), dateShipped: Date(), customerID: customer1, customerName: customer1, status: Orders.OrderStatus.Delivered, shippingID: shippingDetails)
order1.display()

//Order Details

var orderDetails=OrderDetails(orderID: 77, cartDetails: customer1.shoppingCart)
orderDetails.display()

//Update Customer Info

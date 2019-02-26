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
    var quantity: Int?
     var productID: Product?
    var dateAdded:Date = Date()
    
    init?(cartID: Int, quantity: Int, productID: Product, dateAdded: Date)
    {
        self.cartID = cartID
        self.dateAdded = dateAdded
        self.productID = productID
        self.quantity = quantity
    }
    
    //Add products to Cart
    func addCartItem(customer : Customer){
        let cartItem=ShoppingCart(cartID: self.cartID!, quantity: self.quantity!, productID: self.productID!,dateAdded: self.dateAdded)
        
        for product in customer.shoppingCart
        {
            
            if(product.productID!.getProductID!==cartItem?.productID!.productID){
                
                //  print("Product already in cart")
            }else{
                
                //   print("Product not in cart")
            }
        }
        customer.shoppingCart.append(cartItem!)
        
        
    }
    
    //update quantity
    func updateQuantity(customer : Customer,productID: Int ,newQuantity:Int)->Bool{
        
        for product in customer.shoppingCart
        {
            if(productID==(product.productID?.getProductID)){
                if product.cartID == self.cartID
                {
                    product.quantity = newQuantity
                    return true
                }else{
                    print("Invalid Card ID")
                }
            }
        }
        return false
    }
    func viewCartDetails(){
        
        
    }
    
    func checkout(){
        
    }
    func display() {
        print("Products\n---------")
        print("Cart Id: \(self.cartID!) \nProduct ID: \(String(describing:self.productID!.getProductID!)) Product Name: \(String(describing: self.productID!.ProductName!))  Quantity: \(String(describing: self.quantity!)) \nDate Added: \(self.dateAdded.getForamttedDate())")
        
    }
}



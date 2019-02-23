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
   var arrayProducts:[Product] = [Product]()
   var dateAdded:Date = Date()
 
    init?(cartID: Int, dateAdded:Date, arrayProducts:[Product])
    {
        self.cartID = cartID
        self.dateAdded = dateAdded
        self.arrayProducts = arrayProducts
        
        for product in self.arrayProducts {
            product.cartQuantityDefault(cartQuantity: 1)
        }
       
    }
    func display() {
        print("***************************************************")
        print("Cart Id: \(self.cartID!) Date Added: \(self.dateAdded.getForamttedDate())")
        for product in self.arrayProducts {
            product.display()
        }
        
    }
    
    func addCartItem(productID:Int){
//        for product in self.arrayProducts {
//            if(product.getProductID==productID){
//                print("Product is already added to the cart")
//
//            }else{
//
//            }
//
//        }
        if arrayProducts.allSatisfy({$0.getProductID != productID}) {
            print("Invalid Product ID")
        }
        else{
            print("Product Already In Cart")
        }
    }
   
    //update quantity
    func updateQuantity(productID:Int,quantity:Int){
        //Add Validations or Product handling later
      
        arrayProducts.filter{ $0.getProductID! == productID }.first?.quantity = quantity
        if arrayProducts.allSatisfy({$0.getProductID != productID}) {
            print("Invalid Product ID")
        }

        
//        for product in self.arrayProducts {
//            if(product.getProductID==productID){
//                  product.cartQuantityDefault(cartQuantity: quantity)
//
//            }
//            else{
//
//            }
//
//        }
    }
    func viewCartDetails(){
        
    }
    
    func checkout(){
        
    }
    
}


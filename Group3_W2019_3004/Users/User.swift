//
//  User.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//

import Foundation

class User{

    var userID:String?
    var password:String?
 
    init()
        
    {
        
        self.userID = String()
        
        self.password = String()
        
    }
    
    init?(userID: String, password: String)
        
    {
        
        self.userID = userID
        
        self.password = password
        
        
        
        if (userID.isEmpty || password.isEmpty)
            
        {
            
            if(!password.isValidPassword())
                
            {
                
                print("Invalid Password format")
                
                return nil
                
            }
            
            
            
        }else{
            
            print("User ID or Password cannot be empty ")
            
            return nil
            
        }
        
        
        
    }
    
    
    
   
    
    
    func verifyLogin()-> Bool
        
    {
        
        if(true)
            
        {
            
            return false
            
        }
            
        else{
            
            
            
            return true
            
        }
        
    }
    
    
    
    func display()
        
    {
        
        print(self.userID!,self.password!)
        
    }
    
    
    
    
    
}


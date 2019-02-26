//
//  User.swift
//  Group3_W2019_3004
//
//  Created by Nayay Sharma on 2019-02-22.
//  Copyright © 2019 Group3. All rights reserved.
//


import Foundation

class User:IDisplay{

    var userID:String!
    var password:String!
    var loginStatus = LoginStatus.InValid
    static var userIdSet = Set<String>()
    //Enum for login status Valid, Invalid User
    enum LoginStatus : Int
    {
        case Valid, InValid
    }
    
    init() {
        
    }
    
    init(userID: String, password: String) throws
    {
        if (!userID.isEmpty || !password.isEmpty)
        {
            if(!User.userIdSet.contains(userID))
            {
                if(password.isValidPassword())
                {
                    self.userID = userID
                    self.password = password
                    User.userIdSet.insert(userID)
                }else{
                    throw OMSError.Invalid("Invalid Password")
                }
            }else
            {
                throw OMSError.Invalid("**User with User ID: \(userID) already exist")
            }
        }else
        {
            throw OMSError.Invalid("User Id or Password cannot be empty")
        }
        
    }
    
    func verify() {
        loginStatus = LoginStatus.Valid
    }
    
    func verifyLogin()-> Bool
    {
        if(self.loginStatus == LoginStatus.InValid)
        {
            return false
        }
        else{
            
            return true
        }
    }
    func display()
    {
        print("User Details \n--------------------------------------------------------------")
        print("UserId: \(self.userID!)  Login Status: \(self.loginStatus)")
    }
    
    
}


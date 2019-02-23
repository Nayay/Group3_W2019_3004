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

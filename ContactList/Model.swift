//
//  Model.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import Foundation

struct Person: Identifiable {

    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var id: String {
        return firstName + lastName + phone + email
    }
}

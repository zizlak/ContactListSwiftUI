//
//  Cell.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct Cell: View {
    
    var person: Person
    
    var body: some View {
        VStack{
            
            List {
                Section (header: Text(person.lastName + " " + person.lastName)) {
                    Text("phone: " + person.phone)
                    Text("email: " + person.email)
                }
            }
            .frame(height: 140, alignment: .leading)
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(person: Person(firstName: "Kostja", lastName: "Smoon", phone: "544335", email: "ww@gmail.ru"))
    }
}

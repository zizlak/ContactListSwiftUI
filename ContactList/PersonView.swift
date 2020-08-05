//
//  PersonView.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct PersonView: View {
    var person: Person
    
    var body: some View {
        VStack {
            Text(person.firstName + " " + person.lastName)
            Text("Phone Number: " + person.phone)
            Text("E-Mail: " + person.email)
        }
        .navigationBarTitle(person.firstName + " " + person.lastName)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: DataManager().createPersonsArray()[0])
    }
}

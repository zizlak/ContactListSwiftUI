//
//  ContactList.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct ContactList: View {
    var personsList: [Person]
    
    var body: some View {
        
        NavigationView {
            List(personsList) {
                person in
                NavigationLink(destination: PersonView(person: person)) {
                    Text("\(person.firstName) \(person.lastName)")
                }
            }
            .navigationBarTitle("Persons List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(personsList: DataManager().createPersonsArray())
    }
}



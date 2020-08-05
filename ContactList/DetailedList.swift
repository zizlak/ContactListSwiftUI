//
//  DetailedList.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct DetailList: View {
    let personList: [Person]

    var body: some View {
        NavigationView {
            List {
                ForEach(personList) { person in
                    Section(header: Text(person.fullName)) {
                        Text("phone: " + person.phone)
                        Text("email: " + person.email)
                    }
                }
            }.navigationBarTitle("Persons Detailed List")
        }
    }
}

struct DetailList_Previews: PreviewProvider {
    static var previews: some View {
        DetailList(personList: DataManager().createPersonsArray())
    }
}

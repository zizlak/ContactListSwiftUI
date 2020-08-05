//
//  ContentView.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let personsList = DataManager().createPersonsArray()
    
    var body: some View {
        TabView {
            ContactList(personsList: personsList)
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("List")
            }
            DetailList(personList: personsList)
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("Detail")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

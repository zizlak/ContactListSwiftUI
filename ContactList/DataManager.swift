//
//  DataManager.swift
//  ContactList
//
//  Created by Aleksandr Kurdiukov on 05.08.20.
//  Copyright © 2020 Zizlak. All rights reserved.
//

import Foundation

class DataManager {
    
    private let firstNames = ["Jack","Anne", "Lidia", "Anna", "Caroline", "Svetlana", "Bob", "Tim", "Alfred", "Lizbeth"]
    private let lastName = ["Smith","Simpson", "Schulz", "Petrov", "Ho", "Marley", "Jobs", "Cook", "Malina", "Smidt"]
    private let phoneNumber =  ["178900","118904", "377892", "363790", "555789", "222367", "099993", "349999", "234111", "558944"]
    private let email = ["slon@gmail.com","elena@gmail.com", "dodo@gmail.com", "por34@gmail.com", "lacost@gmail.com", "may12@gmail.com", "osen39@yahoo.com", "rotterdam@rambler.com", "rot2@rambler.com", "alla99@rambler.com"]
    
    func createPersonsArray() -> [Person] {
        let firstNamesArray = firstNames.shuffled()
        let lastNamesArray = lastName.shuffled()
        let phoneArray = phoneNumber.shuffled()
        let emailArray = email.shuffled()
        
        var array: [Person] = []
        
        let number = firstNames.count
        
        for i in 0..<number {
            if email.count >= number && phoneNumber.count >= number && lastName.count >= number {
                let newPerson = Person (
                    firstName: firstNamesArray[i],
                    lastName: lastNamesArray[i],
                    phone: phoneArray[i],
                    email: emailArray[i]
                )
                array.append(newPerson)
            }
        }
        return array
    }
}

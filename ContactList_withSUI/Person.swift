//
//  Person.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
    
    static func getContact() -> Person {
        getContact(Int.random(in: 1...10))
    }
    
    static func getContact(_ idx: Int) -> Person {
        let names = DataStore.shared.names
        let surnames = DataStore.shared.surnames
        let emails = DataStore.shared.emails
        let phones = DataStore.shared.phones

        let name = "\(names[Int.random(in: 0..<names.count)])"
        let surname = "\(surnames[Int.random(in: 0..<surnames.count)])"
        let email = emails[Int.random(in: 0..<emails.count)]
        let phone = phones[Int.random(in: 0..<phones.count)]
        let fullName = "\(name) \(surname)"

        let personContact = Person(name: name, surname: surname, email: email, phoneNumber: phone)

        return personContact
        
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


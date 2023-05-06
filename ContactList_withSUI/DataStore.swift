//
//  DataStore.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "John",
        "David",
        "Carl",
        "Walter",
        "Jessy",
        "Theresa",
        "Garry",
        "Frodo",
        "Arya",
        "Tyrion"
    ]
    
    let surnames = [
        "White",
        "Pinkman",
        "Potter",
        "Gallagher",
        "Beggins",
        "Snow",
        "Stark",
        "Lannister ",
        "Targaryen",
        "Baratheon"
    ]
    
    let emails = [
        "123@mail.ru",
        "234@mail.ru",
        "345@mail.ru",
        "45768@mail.ru",
        "2387@mail.ru",
        "5867892@mail.ru",
        "56731@mail.ru",
        "5689078@mail.ru",
        "039785@mail.ru",
        "7642456@mail.ru"
    ]
    
    let phones = [
        "745396026",
        "145036843",
        "287185656",
        "293520954",
        "562880225",
        "738594072",
        "825654134",
        "645898473",
        "432349845",
        "459477625"
    ]
    
    private init() {}
}

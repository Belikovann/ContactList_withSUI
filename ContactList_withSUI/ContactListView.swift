//
//  ContactListView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct ContactListView: View {
    private let personDetails = Person.getContactList()

    
    var body: some View {
        List(personDetails, id: \.fullName) { person in
            ContactRowView(personContact: person)
        }
        .listStyle(.plain)
    }
}


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}

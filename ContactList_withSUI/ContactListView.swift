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
        NavigationStack {
            VStack {
                List(personDetails, id: \.fullName) { person in
                    NavigationLink(destination: PersonDetailsView(personContact: person)) {
                        ContactRowView(personContact: person)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contact List")
        }
        
    }
}


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView()
    }
}



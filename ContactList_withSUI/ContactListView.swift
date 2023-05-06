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
            HStack {
                NavigationLink("Name"){
                    PersonContactView(personName: "Person Contact")
                }
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

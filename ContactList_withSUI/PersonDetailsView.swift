//
//  PersonContactView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct PersonDetailsView: View {
    let personContact: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                PersonDetailsRowView(personContact: personContact)
            }
            Spacer()
        }
        .navigationTitle("\(personContact.fullName)")
        .padding()
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView(personContact: Person.getContact())
    }
}

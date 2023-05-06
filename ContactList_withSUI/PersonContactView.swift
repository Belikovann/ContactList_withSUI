//
//  PersonContactView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct PersonContactView: View {
    let personContact: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            
            PersonDetailsRowView(personContact: personContact)
            
            Spacer()
        }
        .navigationTitle("\(personContact.fullName)")
        .padding()
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView(personContact: Person.getContact())
    }
}

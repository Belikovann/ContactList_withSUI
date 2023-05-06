//
//  ContactRowView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct ContactRowView: View {
    @State private var isPresented = false
    let personContact: Person
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(personContact.fullName)")
                    .frame(alignment: .leading)
                
                Spacer()
            }
        }
        .sheet(isPresented: $isPresented) {
            PersonDetailsView(personContact: personContact)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(personContact: Person.getContact())
    }
}


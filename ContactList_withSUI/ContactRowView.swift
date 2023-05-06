//
//  ContactRowView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct ContactRowView: View {
    let personContact: Person
    
    var body: some View {
        HStack {
            Text("\(personContact.fullName)")
                .frame(alignment: .leading)
            
            Spacer()
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(personContact: Person.getContact())
    }
}


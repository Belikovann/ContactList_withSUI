//
//  PersonDetailsRowView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 07.05.2023.
//

import SwiftUI

struct PersonDetailsRowView: View {
    let personContact: Person
    
    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 130, height: 130, alignment: .center)
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                    .frame(width: 20, alignment: .leading)
                Text("\(personContact.phoneNumber)")
                Spacer()
            }
            HStack {
                Image(systemName: "tray")
                    .foregroundColor(.blue)
                    .frame(width: 20, alignment: .leading)
                Text("\(personContact.email)")
                Spacer()
            }
        }
    }
}

struct PersonDetailsRowView_Previews: PreviewProvider {
        static var previews: some View {
            PersonDetailsRowView(personContact: Person.getContact())
        }
    }

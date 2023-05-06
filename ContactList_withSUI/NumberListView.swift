//
//  NumbersView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct NumberListView: View {
    private let personDetails = Person.getContactList()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(personDetails, id: \.fullName) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack{
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                                .frame(width: 20, alignment: .leading)
                            Text("\(person.phoneNumber)")
                            
                            Spacer()
                        }
                        HStack {
                            Image(systemName: "tray")
                                .foregroundColor(.blue)
                                .frame(width: 20, alignment: .leading)
                            Text("\(person.email)")
                            
                            Spacer()
                            
                        }
                    }
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumberListView()
    }
}



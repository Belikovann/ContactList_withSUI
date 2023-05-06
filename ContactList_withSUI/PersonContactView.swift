//
//  PersonContactView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct PersonContactView: View {
    let personDetails: Person
    
    var body: some View {
        VStack {
            Text("\(personDetails.fullName)")
                .font(.title)
                .bold()
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150, alignment: .center)
            
        }
        Spacer()
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView(personDetails: Person.getContact())
    }
}

//
//  PersonContactView.swift
//  ContactList_withSUI
//
//  Created by Аня Беликова on 06.05.2023.
//

import SwiftUI

struct PersonContactView: View {
    let personName: String
    
    var body: some View {
        Text(personName)
            .font(.title)
            .bold()
    }
}

struct PersonContactView_Previews: PreviewProvider {
    static var previews: some View {
        PersonContactView(personName: "Name Surname")
    }
}

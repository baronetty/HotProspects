//
//  ProspectsDetailView.swift
//  HotProspects
//
//  Created by Leo  on 21.02.24.
//

import SwiftUI

struct ProspectsDetailView: View {
    @Environment(\.modelContext) private var modelContext
    @Bindable var prospect: Prospect
    
    var body: some View {
        VStack {
            Spacer()
            
            Section {
                TextField("Name", text: $prospect.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // Runder Rahmen
                    .cornerRadius(10) // Eckradius
                    .textContentType(.name)
                    .font(.title3)
            }
            
            Section {
                TextField("Email Addresse", text: $prospect.emailAddress)
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // Einfaches Textfeld ohne Rahmen
                    .cornerRadius(10) // Eckradius
                    .textContentType(.emailAddress)
                    .font(.title3)
            }
            
            Spacer()
            Spacer()
        }
        .padding() // Äußerer Abstand für die gesamte Ansicht
        .navigationTitle("Edit \(prospect.name)")
    }

}

//#Preview {
//    ProspectsDetailView(prospect: Prospect(name: "Leo", emailAddress: "leo@bla.de", isContacted: true))
//        .modelContainer(for: Prospect.self)
//}

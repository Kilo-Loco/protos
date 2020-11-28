//
//  EditProfileView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct EditProfileView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Button(action: {}) {
                    ZStack {
                        Image(systemName: "person.circle")
                            .resizable()
                        
                        Color(white: 0, opacity: 0.5)
                        
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack {
                    Text("Name")
                        .bold()
                        .frame(width: 75, alignment: .leading)
                    
                    TextField("", text: .constant("Kilo Loco"))
                        .foregroundColor(.accentColor)
                }
                .padding(.horizontal)
                
                Divider()
                
                HStack(alignment: .top) {
                    Text("Bio")
                        .bold()
                        .frame(width: 70, alignment: .leading)
                        .padding(.top, 8)
                    
                    TextEditor(text: .constant("Kilo Loco"))
                        
                        .foregroundColor(.accentColor)
                        .frame(height: 200)
                }
                .padding(.horizontal)
                
                Divider()
                
                Spacer()
            }
            .padding(.top)
            .navigationBarTitle("Edit profile", displayMode: .inline)
            .navigationBarItems(
                leading: Text("Cancel")
                    .foregroundColor(.accentColor),
                trailing: Text("Save")
                    .foregroundColor(.accentColor)
            )
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

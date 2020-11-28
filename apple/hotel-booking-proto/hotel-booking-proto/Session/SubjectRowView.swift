//
//  SubjectRowView.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/6/20.
//

import SwiftUI

protocol Subject {
    var name: String { get }
    var description: String { get }
    var notes: String { get }
    var imageKey: String { get }
}

struct SubjectRowView: View {
    
    private let subject: Subject
    
    init(_ subject: Subject) {
        self.subject = subject
    }
    
    var body: some View {
        HStack {
            let path = Bundle.main.path(forResource: "stock-photo", ofType: "png")!
            Image(uiImage: UIImage(contentsOfFile: path)!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 125)
                .clipped()
            
            
            VStack(alignment: .leading) {
                Text(subject.name)
                    .font(.headline)
                Text(subject.description)
                    .font(.body)
                Spacer()
                Text(subject.notes)
                    .font(.footnote)
            }
            .padding(.vertical, 8)
            
            Spacer()
        }
        .background(Color(.tertiarySystemBackground))
    }
}

struct SubjectRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            SubjectRowView(
                Hotel(
                    name: "Some Hotel",
                    description: "Luxury and comfortable beds and some other stuff as well so that it looks nice",
                    price: 100,
                    imageKey: ""
                )
            )
        }
    }
}

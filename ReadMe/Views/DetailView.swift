//
//  DetailView.swift
//  ReadMe
//
//  Created by Ahmed Nagy on 12/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            Book.Image(title: book.title)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DetailView(book: Book())
}

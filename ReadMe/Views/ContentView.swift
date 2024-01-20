//
//  ContentView.swift
//  ReadMe
//
//  Created by Ahmed Nagy on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(Library().sortedBooks, id: \.title) { book in
                BookRow(book: book)
            }
            .navigationTitle("Library")
        }
    }
}

struct BookRow: View {
    
    let book: Book
    
    var body: some View {
        NavigationLink(destination: DetailView(book: book)) {
            HStack {
                Book.Image(title: book.title, size: 80 )
                TitleAndAuthorStack(book: book, titleFont: .title3, authorFont: .title2)
                    .lineLimit(1)
            }
        }
    }
}


#Preview {
    ContentView()
}

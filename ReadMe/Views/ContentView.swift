//
//  ContentView.swift
//  ReadMe
//
//  Created by Ahmed Nagy on 07/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(Library().sortedBooks, id: \.title) { book in
            BookView(book: book)
        }
    }
}

struct BookView: View {
    
    let book: Book
    
    var body: some View {
        HStack {
            Book.Image(title: book.title)
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title2)
                Text(book.author)
                    .font(.title3)
                    .foregroundStyle(.secondary)
            }
            .lineLimit(1)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

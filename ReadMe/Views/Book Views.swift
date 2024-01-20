//
//  Book Views.swift
//  ReadMe
//
//  Created by Ahmed Nagy on 08/01/2024.
//

import SwiftUI


struct TitleAndAuthorStack: View {
    
    let book: Book
    let titleFont: Font
    let authorFont: Font
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(titleFont)
            Text(book.author)
                .font(authorFont)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

extension Book {
    struct Image: View {
        
        let title: String
        var size: CGFloat?
        
        var body: some View {
            
            let sympol = SwiftUI.Image(title: title) ?? .init(systemName: "book")
            sympol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundStyle(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
        case let sympolName = "\(character.lowercased()).square",
        UIImage(systemName: sympolName) != nil
        else {
            return nil
        }
        
        self.init(systemName: sympolName)
    }
}

#Preview {
    VStack {
        TitleAndAuthorStack(book: .init(), titleFont: .title, authorFont: .title2)
        Book.Image(title: Book().title)
        Book.Image(title: "")
        Book.Image(title: "🐶")
    }
}

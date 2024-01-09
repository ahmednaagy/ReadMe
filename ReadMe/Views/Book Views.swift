//
//  Book Views.swift
//  ReadMe
//
//  Created by Ahmed Nagy on 08/01/2024.
//

import SwiftUI

extension Book {
    struct Image: View {
        
        let title: String
        
        var body: some View {
            
            let sympol = SwiftUI.Image(title: title) ?? .init(systemName: "book")
            sympol
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
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
        Book.Image(title: Book().title)
        Book.Image(title: "")
        Book.Image(title: "🐶")
    }
}

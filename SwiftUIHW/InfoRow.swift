//
//  InfoRow.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct InfoRow: View {
    var rowHeight: Double
    var post: Post
    
    var body: some View {
        HStack{
            post.image
                .resizable()
                .scaledToFill()
                .cornerRadius(6)
                .frame(width: 60, height: 60)
                .padding(.leading, 30)
                .padding(.trailing, 40)
                
            Text(post.subtype)
                .font(.headline)
                
            Spacer()
               .frame(height: CGFloat(rowHeight))
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(rowHeight: 40, post: Post.posts[0])
    }
}

//
//  InfoDetails.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct InfoDetails: View {
    
    var post: Post
    
    var body: some View {
        ScrollView{
            post.image
                .resizable()
                .scaledToFit()
                //.shadow(radius: 10)
                .cornerRadius(12)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            VStack(alignment: .leading) {
                
                Text("Категория велосипеда:")
                    .font(.title3)
                Text(post.type)
                    .font(.title)
                    .foregroundColor(.orange)
                Divider()
                Text("Тип велосипеда:")
                    .font(.title3)
                Text(post.subtype)
                    .font(.title)
                    .foregroundColor(.orange)
                Divider()
                Text(post.description)
            }
            .padding()
        }
        .navigationTitle(post.subtype)
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetails(post: Post.posts[0])
    }
}

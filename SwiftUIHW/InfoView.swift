//
//  ListView.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.posts){post in
                NavigationLink{
                    InfoDetails(post: post)
                }
            label: {
                   InfoRow(post: post)
                }
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

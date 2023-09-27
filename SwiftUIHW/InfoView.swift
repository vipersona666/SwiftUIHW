//
//  ListView.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct InfoView: View {
    var rowHeight: Double
    var titleOn: Bool
    var navTitle = "Список типов велосипедов:"
    var body: some View {
        NavigationView {
            
            List( Post.posts) {post in
                NavigationLink{
                    InfoDetails(post: post)
                }
            label: {
                InfoRow(rowHeight: rowHeight, post: post)
                }
            .frame(height: rowHeight)
            }.navigationTitle(titleOn ? navTitle : "")
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(rowHeight: 40, titleOn: true)
    }
}

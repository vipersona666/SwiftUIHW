//
//  ContentView.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage ("useTitle") var useTitle = false
    @AppStorage ("useRowHeight") var useRowHeight = 40.0
    @State private var titleOn = false
    @State private var rowHeight = 40.0
    var body: some View {
        
        TabView(){
            InfoView(rowHeight: useRowHeight, titleOn: useTitle)
                .tabItem {
                    Label ("InfoView", systemImage: "bicycle")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "face.smiling")
                }
            SettingsView(titleOn: $titleOn, rowHeight: $useRowHeight, progress: useRowHeight)
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

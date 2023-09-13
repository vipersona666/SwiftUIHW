//
//  ContentView.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            InfoView()
                .tabItem {
                    Label ("InfoView", systemImage: "bicycle")

                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "face.smiling")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

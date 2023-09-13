//
//  SettingsView.swift
//  SwiftUIHW
//
//  Created by Andrei on 13.09.2023.
//

import SwiftUI

enum SetColor: String, CaseIterable, Identifiable {
    case blue, red, orange, gray, green, yellow
    var id: Self { self }
}




struct SettingsView: View {
    @State private var selectedColor: SetColor = .blue
    @State private var isPushEnable = false
    @State private var isEditing = false
    @State private var progress = 50.0
    var body: some View {
        Form(){
            Section(){
                Text("Настройки")
                    .font(.largeTitle)
                Toggle(isOn: $isPushEnable) {
                    Text ("Push enable")
                }
            }
            Section(){
                VStack{
                    Slider(value: $progress, in: 0...100) { isEditing in
                        self.isEditing = isEditing
                    }
                    Text("\(progress)")
                        .foregroundColor(progress >= 80 ? .red : .green)
                }
            }
            Section(){
                Picker("Color", selection: $selectedColor) {
                    Text("Blue").tag(SetColor.blue)
                    Text("Red").tag(SetColor.red)
                    Text("Green").tag(SetColor.green)
                    Text("Yellow").tag(SetColor.yellow)
                    Text("Orange").tag(SetColor.orange)
                    Text("Grey").tag(SetColor.gray)
                        
                }
                
            }

        }
       
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

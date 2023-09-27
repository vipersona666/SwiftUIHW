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
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    @Binding var rowHeight: Double
    @AppStorage (wrappedValue: false, "useTitle") var useTitle
    @AppStorage ("useRowHeight") var useRowHeight = 40.0
    @State private var selectedColor: SetColor = .blue
    //@State private var isPushEnable = false
    @State private var isEditing = false
    @State var progress: Double
    
    var body: some View {

            Form {
                
                Section(){
                    Text("Settings")
                        .font(.largeTitle)
                    Text((colorScheme == .dark ? "Dark theme" : "Light theme") + " enabled")
                }
                
                Section(){
                    VStack(alignment: .leading){
                        Spacer(minLength: 10)
                        Toggle(isOn: $useTitle) {
                            Text ("Include title")
                                .onChange(of: useTitle) { on in
                                    if on {
                                       titleOn = true
                                        
                                    } else {
                                        titleOn = false
                                    }
                                }
                            if useTitle{
                                Text("Navigation title enabled")
                            } else {
                                Text("")
                            }
                        }
                        Spacer(minLength: 10)
                        Text("Настройка высоты ячейки в списке")
                        Text("Высота: \(progress)")
                            .foregroundColor(progress >= 100 ? .red : .green)
                        Slider(value: $progress, in: 40...200) { isEditing in
                            self.isEditing = isEditing
                            self.rowHeight = useRowHeight
                            self.useRowHeight = progress
                            //self.progress = useRowHeight
                            
                        }
                        Text("Пример смотрите ниже:")
                        Spacer(minLength: 10)
                    }
                }
                
                if isEditing{
                        InfoRow(rowHeight: 40, post: Post.posts[0])
                            .frame(height: CGFloat(progress))
                    
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




//struct SettingsView_Previews: PreviewProvider {
//    //var titleOnn: Bool = true
//    static var previews: some View {
//        SettingsView(titleOn: titleOnn)
//    }
//}

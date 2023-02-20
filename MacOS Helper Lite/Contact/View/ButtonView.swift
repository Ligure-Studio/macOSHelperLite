//
//  ButtonView.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/11.
//

import SwiftUI

struct ButtonView: View {
    var name: String
    var copyScript: String
    
    var body: some View {
        Button(action: {
            copyStringToPasteboard(string:copyScript)
        }) {
            Text(name)
        }
        .myButtonStyle()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(name: "Button", copyScript: "echo Hello World")
    }
}

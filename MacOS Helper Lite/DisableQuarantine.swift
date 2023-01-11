//
//  DisableQuarantine.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/10.
//

import SwiftUI

struct DisableQuarantine: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("解决已损坏问题")
                    .gradientForeground(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color.blue])
                    .font(.system(size:40).bold())
                    .padding()
                    .padding(.top, 80)
                Text("开启全部来源后,若仍不能正常打开")
                    .font(.title2)
                    .padding(.bottom,5)
                    .padding([.leading,.trailing])
                Text("复制代码,粘贴入终端,输入一个空格,将无法运行的应用拖入终端")
                    .font(.title2)
                    .padding(.bottom)
                Button(action: {
                    copyStringToPasteboard(string: "sudo xattr -r -d com.apple.quarantine")
                }) {
                    Text("点我复制终端命令")
                }
                .buttonStyle(.plain)
                .font(.title)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color(red: 11/255.0, green: 36/255.0, blue: 148/255.0)]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(Color.white)
                .cornerRadius(50).padding(10)
            } //VStack结束
        } //ScrollView结束
    }
}

struct DisableQuarantine_Previews: PreviewProvider {
    static var previews: some View {
        DisableQuarantine()
    }
}

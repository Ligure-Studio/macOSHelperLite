//
//  EnableAllSources.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/10.
//

import SwiftUI
import Foundation

struct EnableAllSources: View {
    
    var body: some View {
        ScrollView {
            VStack {
                Text("开启全部来源")
                    .gradientForeground(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color.blue])
                    .font(.system(size:40).bold())
                    .padding()
                    .padding(.top, 80)
                Text("在开启全部来源后,部分没有开发者签名的软件将可以正常打开")
                    .font(.title2)
                    .padding(.bottom,5)
                    .padding([.leading,.trailing])
                Text("仍提示损坏的请移步 App已损坏 板块")
                    .font(.title2)
                    .padding(.bottom)
                Button(action: {
                    runScript(scPath: "test.scpt")
                }) {
                    Text("开启全部来源")
                }
                .buttonStyle(.plain)
                .font(.title)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color(red: 11/255.0, green: 36/255.0, blue: 148/255.0)]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(Color.white)
                .cornerRadius(50).padding(10)
            } //VStack结束
        } //ScrollView结束
    } //Body 结束
} //View 结束

struct EnableAllSources_Previews: PreviewProvider {
    static var previews: some View {
        EnableAllSources()
    }
}

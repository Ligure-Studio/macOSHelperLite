//
//  ContactUs.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/11.
//

import SwiftUI

struct ContactUs: View {
    var body: some View {
        VStack {
            Text("An Open Source Project By Ligure Studio")
                .font(.system(size: 40).bold())
                .gradientForeground(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color.blue])
                .padding()
            HStack {
                Text("Ver.")
                Text("Beta 0.0.1")
            }
            .font(.system(size: 25).bold())
            HStack {
                Text("联系开发团队")
                Text("service@ligure.cn")
            }.font(.system(size: 15))
                .padding()
            HStack {
                Text("访问官网")
                Text("https://ligure.cn")
            }.font(.system(size: 15))
        }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}

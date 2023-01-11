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
            Text("An Open Source Project By MingS")
                .font(.system(size: 40).bold())
                .gradientForeground(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color.blue])
                .padding()
            HStack {
                Text("Ver.")
                Text("Alpha 0.0.01")
            }
            .font(.system(size: 25).bold())
            HStack {
                Text("联系开发者")
                Text("jackchenjiafan@gmail.com")
            }.font(.system(size: 15))
                .padding()
            HStack {
                Text("访问官网")
                Text("macapp.org.cn")
            }.font(.system(size: 15))
            
            Text("拒绝付费站点转载,拒绝马克喵转载")
                .foregroundColor(.red)
                .font(.system(size: 30).bold())
                .padding()
        }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}

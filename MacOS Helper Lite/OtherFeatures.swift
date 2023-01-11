//
//  OtherFeatures.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/11.
//

import SwiftUI

struct OtherFeatures: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ButtonView(name: "复制homebrew安装命令", copyScript: """
                                                                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
""")
                ButtonView(name: "复制重置dock命令", copyScript: """
defaults delete com.apple.dock; killall Dock
""")
                ButtonView(name: "复制取消四位密码限制命令", copyScript: """
pwpolicy -clearaccountpolicies
""")
            } .padding(50) //HStack结束
        } //ScrollView结束
    } //Body结束
} //View结束

struct OtherFeatures_Previews: PreviewProvider {
    static var previews: some View {
        OtherFeatures()
    }
}

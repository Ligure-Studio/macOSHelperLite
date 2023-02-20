//
//  OtherFeatures.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/11.
//

import SwiftUI

struct OtherFeatures: View {
    @State var showDockAlert:Bool = false
    @State var resetDock:Bool = false
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ButtonView(name: "复制homebrew安装命令", copyScript: """
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
""")
                Button(action: {
                    runScript("do shell script \"pwpolicy -clearaccountpolicies\" with administrator privileges")
                }) {
                    Text("取消四位密码限制")
                }
                //增加返回文本
                .myButtonStyle()
                
                Button(action: {
                    self.showDockAlert.toggle()
                }) {
                    Text("重置Dock(仅在出现异常时需要使用)")
                }
                .dangerousButtonStyle()
                .alert(isPresented: self.$showDockAlert) {
                            Alert(title: Text("警告⚠️！"), message: Text("是否确认重置？此操作会将Dock恢复为出厂设置"),
                                  primaryButton: .destructive(
                                      Text("确认"),
                                      action: {
                                          runScript("do shell script \"defaults delete com.apple.dock; killall Dock\" with administrator privileges")
                                      }
                                  ),
                                  secondaryButton: .default(
                                      Text("取消")
                                  ))
                        }
            } .padding(50) //HStack结束
        } //ScrollView结束
    } //Body结束
} //View结束

struct OtherFeatures_Previews: PreviewProvider {
    static var previews: some View {
        OtherFeatures()
    }
}

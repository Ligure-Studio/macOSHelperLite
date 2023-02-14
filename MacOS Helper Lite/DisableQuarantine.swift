//
//  DisableQuarantine.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/10.
//

import SwiftUI

struct DisableQuarantine: View {
    @State var isShowAlert:Bool = false
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
                Text("点击按钮,选择无法运行的应用")
                    .font(.title2)
                    .padding(.bottom)
                Button(action: {
                    let openURL = showOpenPanel()
                    if openURL != "failed"
                    {
                        runScript("do shell script \"sudo xattr -r -d com.apple.quarantine " + openURL + "\" with administrator privileges")
                        self.isShowAlert.toggle()
                        
                    }
                }) {
                    Text("""
解决“已损坏”问题
""")
                }
                .alert(isPresented: self.$isShowAlert) {
                            Alert(title: Text("完成！"), message: Text("已修复～快打开一下试一试吧"), dismissButton:
                                        .default(Text("关闭")
                                                ))
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

func showOpenPanel() -> String {//打开文件函数,返回值为路径
    let openPanel = NSOpenPanel()
    openPanel.allowedFileTypes = ["app"]
    openPanel.allowsMultipleSelection = false
    openPanel.canChooseDirectories = false
    openPanel.canChooseFiles = true
    if (openPanel.runModal() ==  NSApplication.ModalResponse.OK) {
        let result = openPanel.url // Pathname of the file

        if (result != nil) {
            return result!.path
        }
    }
    else {
        return "failed"
    }
    return "failed"
}

struct DisableQuarantine_Previews: PreviewProvider {
    static var previews: some View {
        DisableQuarantine()
    }
}

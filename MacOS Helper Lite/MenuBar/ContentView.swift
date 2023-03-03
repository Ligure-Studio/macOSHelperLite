//
//  ContentView.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/1/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //这是菜单
        NavigationView {
            
            //List开始===
            List{             NavigationLink(destination:EnableAllSources()) {
                Label("全部来源",systemImage:"key.fill")
                    .font(.title3)
            }.padding() //"开启全部来源"结束
                
                NavigationLink(destination:DisableQuarantine()) {
                    Label("App已损坏",systemImage: "exclamationmark.square.fill")
                        .font(.title3)
                }.padding() //App损坏修复结束
                
                NavigationLink(destination:OtherFeatures()) {
                    Label("其他实用功能",systemImage: "ellipsis.circle")
                        .font(.title3)
                }.padding() //其他功能结束
                
                NavigationLink(destination:ContactUs()) {
                    Label("联系我们",systemImage: "envelope.badge.fill")
                        .font(.title3)
                }.padding() //其他功能结束
                
            } //List结束===
            
            VStack {
                Text("*使用前请先打开 程序坞-启动台-其他-终端")
                    .gradientForeground(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0), Color.blue])
                    .font(.system(size:35).bold())
                    .padding()
                Text("若提示输入密码,在输入过程中密码不可见,输入完回车即可")
                    .font(.title2)
                    .padding()

            }
                
                
                .listStyle(SidebarListStyle())
            .navigationTitle(LocalizedStringKey("MacOS Helper Lite"))
        } //NavigationView结束
    } //View结束
} //ContentView结束

//渐变函数===
extension View {
    public func gradientForeground(colors:[Color]) -> some View{
        self.overlay(LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(self)
    }
}
//渐变函数结束===

//更多功能按钮函数===

extension View {
    public func myButtonStyle() -> some View {
        self.buttonStyle(.plain)
            .font(.title)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 79/255.0, green: 147/255.0, blue: 248/255.0),
                                                                   Color(red: 11/255.0, green: 36/255.0, blue: 148/255.0)]),
                                       startPoint: .leading, endPoint: .trailing))
            .foregroundColor(Color.white)
            .cornerRadius(15)
            .padding(10)
    }
}

//更多功能按钮函数结束===

//危险按钮函数===

extension View {
    public func dangerousButtonStyle() -> some View {
        self.buttonStyle(.plain)
            .font(.title)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255.0, green: 100/255.0, blue: 100/255.0),
                                                                   Color(red: 255/255.0, green: 0/255.0, blue: 0/255.0)]),
                                       startPoint: .leading, endPoint: .trailing))
            .foregroundColor(Color.white)
            .cornerRadius(15)
            .padding(10)
    }
}

//危险按钮函数结束===



//剪贴板函数===
extension View {
    
    public func copyStringToPasteboard(string: String) {
        let pboard = NSPasteboard.general           // 1
        pboard.declareTypes([.string], owner: nil)  // 2
        pboard.setString(string, forType: .string)  // 3
    }
}


//剪贴板函数结束===

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
                Label("全部来源",systemImage:"macpro.gen3.fill")
                    .font(.title3)
            }.padding() //"开启全部来源"结束
                
                NavigationLink(destination:DisableQuarantine()) {
                    Label("App已损坏",systemImage: "exclamationmark.square.fill")
                        .font(.title3)
                }.padding() //App损坏修复结束
                
                
            } //List结束===
            
            
            .listStyle(SidebarListStyle())
            .navigationTitle(LocalizedStringKey("MacOS Helper Lite"))
        } //NavigationView结束
    } //body结束
} //ContentView结束

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  runScript.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/2/11.
//

import Foundation

public func runScript(scPath: String) {
    //scPath 为路径变量
    let task = Process()
    task.launchPath = "/usr/bin/osascript"
    task.arguments = [scPath]
    task.launch()
}

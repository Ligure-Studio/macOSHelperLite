//
//  runScript.swift
//  MacOS Helper Lite
//
//  Created by 樊宸嘉 on 2023/2/11.
//

import Foundation

public func runScript(_ command: String) -> String {
    //
    let task = Process()
    let pipe = Pipe()
    
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-e", command]
    task.launchPath = "/usr/bin/osascript"
    task.standardInput = nil
    task.launch()
    
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!
    
    return output
}

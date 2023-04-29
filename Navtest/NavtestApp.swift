//
//  NavtestApp.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import SwiftUI

extension UIViewController
{
func setStatusBarColor(){
    if #available(iOS 13, *)
    {
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        let statusBarFrame = window?.windowScene?.statusBarManager?.statusBarFrame
        let statusBar = UIView(frame: (statusBarFrame)!)
        statusBar.backgroundColor = .orange
        window?.addSubview(statusBar)
    } else {
        // ADD THE STATUS BAR AND SET A CUSTOM COLOR
        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
        if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
            statusBar.backgroundColor = .orange
        }
        UIApplication.shared.statusBarStyle = .lightContent
    }
}

}

@main
struct NavtestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            
        }
    }
}

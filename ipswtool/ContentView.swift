//
//  ContentView.swift
//  ipswtool
//
//  Created by 조현우 on 2021/03/12.
//

import SwiftUI

struct DefaultView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        Text("Welcome to IPSWTool!")
            .font(.largeTitle)
            .padding(.bottom)
        Text("IPSWTool is a all-in-one tool that can download and extract IPSW firmwares.")
        Text("You can download any version of IPSW that you want (except Apple Watch)")
        Text("Also, you can extract IPSW firmwares and IMG4 (IM4P Payload) files.")
            
        Text("Click sidebar to start using IPSWTool.")
            .padding(10)
            .padding(.bottom, 5)
        HStack(spacing: 85){
            VStack{
                Text("Contribute")
                    .font(.title2)
                Button(action: {
                    openURL(URL(string: "https://github.com/fxrcha/IPSWTool")!)
                }) {
                    Text("Github")
                }
            }
            VStack{
                Text("Bug Report")
                    .font(.title2)
                Button(action: {
                    openURL(URL(string: "https://github.com/fxrcha/IPSWTool/issues")!)
                }) {
                    Text("Make Issue")
                }
            }
        }
    }
}

struct ContentView: View {
    func toggleSidebar() {
            NSApp.keyWindow?.firstResponder?.tryToPerform(
                #selector(NSSplitViewController.toggleSidebar(_:)), with: nil
            )
    }
    
    var body: some View {
        NavigationView{
            List {
                Section(header: Text("Welcome!")){
                    NavigationLink(destination: DefaultView()) {
                        Label("Introduction", systemImage: "message.fill")
                    }
                }
                Section(header: Text("Downloads")){
                    NavigationLink(destination: DefaultView()) {
                        Label("iPhone", systemImage: "iphone")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("iPad", systemImage: "ipad")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("iPod", systemImage: "ipodtouch")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("Mac (Apple Silicon)", systemImage: "desktopcomputer")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("Apple TV & HomePod", systemImage: "homepod")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("T2 Chips", systemImage: "memorychip")
                    }
                }
                Section(header: Text("Extract")){
                    NavigationLink(destination: DefaultView()) {
                        Label("IPSW", systemImage: "shippingbox.fill")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("IMG4", systemImage: "folder.fill.badge.gear")
                    }
                }
                Section(header: Text("About")){
                    NavigationLink(destination: DefaultView()) {
                        Label("Version", systemImage: "info.circle.fill")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("Credits", systemImage: "person.2.fill")
                    }
                }
            }
            DefaultView()
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("IPSWTool")
        .toolbar{
            ToolbarItem(placement: .navigation){
                Button(action: toggleSidebar, label: {
                    Image(systemName: "sidebar.left")
            })
        }
        
        }
    }
}

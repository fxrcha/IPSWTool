//
//  ContentView.swift
//  ipswtool
//
//  Created by 조현우 on 2021/03/12.
//

import SwiftUI

struct DefaultView: View {
    var body: some View {
        Text("Hello, world!")
        Text("This is SwiftUI 2.").padding()
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination: DefaultView()) {
                    Label("Introduction", systemImage: "message")
                }
                Group{
                    Spacer()
                    Text("Downloads")
                    Group{
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
                            Label("HomePods", systemImage: "homepod")
                        }
                    }
                    Spacer()
                    Text("Extract")
                    Group{
                        NavigationLink(destination: DefaultView()) {
                            Label("IPSW", systemImage: "shippingbox.fill")
                        }
                        NavigationLink(destination: DefaultView()) {
                            Label("IMG4", systemImage: "folder.fill.badge.gear")
                        }
                    }
                }
                Group{
                    Spacer()
                    Text("About")
                    NavigationLink(destination: DefaultView()) {
                        Label("Version", systemImage: "info.circle.fill")
                    }
                    NavigationLink(destination: DefaultView()) {
                        Label("Credits", systemImage: "person.2.fill")
                    }
                }
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("IPSWTool")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

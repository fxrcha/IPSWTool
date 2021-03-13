//
//  DownloadView.swift
//  ipswtool
//
//  Created by 조현우 on 2021/03/12.
//

import Foundation
import SwiftUI


struct iPhoneView: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(iPhones.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("\(element)")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}

struct iPadView: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(iPads.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("\(element)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}
 
struct iPodView: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(iPods.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("\(element)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}

struct MacView: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(Macs.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("\(element)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}

struct EtcView: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(AudioAndTVs.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("\(element)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}

struct T2View: View {
    private var columns: [GridItem] = [
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16),
        GridItem(spacing: 16)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing:16
            ) {
                Section(header:Text("Choose Device")
                            .font(.title)
                            .padding(10)
                ) {
                    ForEach(T2Chips.reversed(), id: \.self) { element in
                        Button(action:{}) {
                            VStack {
                                Image("iBridge")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60)
                                Text("\(element)")
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                    }
                }
            }
        }
    }
}

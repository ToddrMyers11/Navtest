//
//  ContentView.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack{
                Button {
                    path.append("SecondView")
                } label: {
                    Text("This is the first view")
                    
                }
                .navigationDestination(for: String.self) { view in
                    switch view {
                    case "SecondView":
                        SecondView(path: $path)
                    case "ThirdView":
                        ThirdView(path: $path)
                    case "FourthView":
                        FourthView(path: $path)
                    case "FifthView":
                        FifthView(path: $path)
                    default:
                        Text("Unknown")
                    }
                    
                }
                //.toolbar {
                    //Text("Save")}
                .navigationTitle("First View")
                
            }
        }
        //.padding()
        
    }
}



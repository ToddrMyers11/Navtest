//
//  SecondView.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import Foundation
import SwiftUI



struct SecondView: View {
    
    
    
    
    @Binding var path: NavigationPath
    var body: some View {
        Text("View")
            .padding()
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.inline)
            //.preferredColorScheme(.light)
            //.toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(Color.orange)
        
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Save") {
                        print("delete document")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                   Button {
                        path.append("ThirdView")
                    } label: {
                        Text("This is the second view")
                    }
                    }
                }
            }
    }


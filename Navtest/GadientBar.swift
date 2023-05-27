//
//  GadientBar.swift
//  Navtest
//
//  Created by Todd Myers on 5/11/23.
//

import Foundation
import SwiftUI

struct NavBar_BackgroundColor_Gradient: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green
                    .opacity(0.1)
                    .ignoresSafeArea()
                
                VStack {
                    Rectangle()
                        .fill(Color.clear)
                        .frame(height: 10)
                        .background(LinearGradient(colors: [.green.opacity(0.3), .blue.opacity(0.5)],
                                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    
                    Text("Have the style touching the safe area edge.")
                        .padding()
                    Spacer()
                }
                .navigationTitle("Nav Bar Background")
                .font(.title2)
                .padding(.top, -10)
            }
        }
    }
}



struct NavBar_BackgroundColor_Gradient_Previews: PreviewProvider {
    static var previews: some View {
    NavBar_BackgroundColor_Gradient()
    }
}

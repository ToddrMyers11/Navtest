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
        ZStack{
            //This toolbar is a struct in a separate file (ToolbarView) that has the patient information that is displayed at the top of the views
            ToolbarView()
            HStack{
                //This button navigates back to the first view
                Button {
                    path.removeLast(path.count)
                } label: {
                    Text("  ") + Text(Image(systemName: "chevron.backward.2")) + Text(" First View")
                }.frame(maxWidth: .infinity, alignment: .leading)
                //.padding(.trailing, 30)
                    .padding(.top, 30)
                //This button navigates forward to the third view
                Button {
                    path.append("ThirdView")
                } label: {
                    Text("Third View ") + Text(Image(systemName: "chevron.forward.2")) + Text("    ")
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top, 30)
            }
        }
        Spacer()
        Text("Second View")
            .padding()
    }
}


//
//  File.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import Foundation
import SwiftUI

struct ThirdView: View {
    @Binding var path: NavigationPath
    var body: some View {
        ZStack{
            //This toolbar is a struct in a separate file (ToolbarView) that has the patient information that is displayed at the top of the views
            ToolbarView()
            HStack{
                //This button navigates back to the second view
                Button {
                    path.append("SecondView")
                } label: {
                    Text("  ") + Text(Image(systemName: "chevron.backward.2")) + Text(" Second View")
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                //This button navigates forward to the fourth view
                Button {
                    path.append("FourthView")
                } label: {
                    Text("Fourth View ") + Text(Image(systemName: "chevron.forward.2")) + Text("    ")
                }.frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top, 30)
            }
        }
        Spacer()
        Text("Third View")
            .padding()
    }
    
}

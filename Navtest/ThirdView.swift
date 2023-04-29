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
        Button {
            path.append("FourthView")
        } label: {
            Text("This is the third view")
            
        }
    }
}

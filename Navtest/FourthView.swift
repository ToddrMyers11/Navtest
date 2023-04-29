//
//  FourthView.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import Foundation
import SwiftUI

struct FourthView: View {
    @Binding var path: NavigationPath
    var body: some View {
        Button {
            path.append("FifthView")
        } label: {
            Text("This is the fourth view")
            
        }
    }
}

//
//  Title.swift
//  Navtest
//
//  Created by Todd Myers on 4/30/23.
//

import Foundation
import SwiftUI

struct TitleFormat: View {
    var title = "Todd Myers"
    var body: some View {
        //View Title
    VStack {
        ZStack (alignment: .leading){
        Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.leading, 30)
        Rectangle()
                .ignoresSafeArea()
        .frame(width: 450.0, height: 55.0)
        .foregroundColor(Color.green.opacity(0.2))
        }
    }
}
}
struct TitleFormat_Previews: PreviewProvider {
    static var previews: some View {
        TitleFormat()
    }
}

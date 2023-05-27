//
//  ContentView.swift
//  Navtest
//
//  Created by Todd Myers on 4/27/23.
//

import SwiftUI
// This first view is the root view. It contains the code for the navigation destination.
struct FirstView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack{
                //This toolbar is a struct in a separate file (ToolbarView) that has the patient information that is displayed at the top of the views
                ToolbarView()
                HStack{
                    //This button navigates forward to the second view
                    Button {
                        path.append("SecondView")
                    } label: {
                        Text("Second View ") + Text(Image(systemName: "chevron.forward.2")) + Text("    ")
                    } .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 30)
                }
            }
            Spacer()
            Text("First View")
                .padding()
            //This navigation destination controls the navigation through each view
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
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

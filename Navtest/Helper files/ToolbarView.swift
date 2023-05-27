//
//  Toolbar.swift
//  Navtest
//
//  Created by Todd Myers on 5/7/23.
//

import Foundation
import SwiftUI

struct ToolbarView: View  {
    @State private var path = NavigationPath()
    var body: some View {
       
            //.toolbar {
                //Next page
                //ToolbarItem(placement: .navigationBarLeading) {
        ZStack(alignment: .trailing){
            VStack{
                Button {
                    print("Image tapped!")
                } label: {
                    Image(systemName: "person.crop.rectangle")
                }.padding(.bottom, 40)
                    .padding(.trailing, 40)
            }
            .zIndex(1)//This modifier brings the button forward in the zstack
            Button {
                //path.append("PatientDetailView")
                // Set the selectedPatient to the one that the user clicks
                //selectedPatient = patient
            } label: {
                ZStack{
                    
                    
                    Rectangle()
                        .fill(.green.opacity(0.2))
                        .frame(width: 400, height: 120)
                    VStack{
                        HStack{
                            
                            //                                    Image(systemName: "person.crop.rectangle")
                            Image("Todd")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            //.padding(.leading)
                            VStack (alignment: .leading){
                                HStack{
                                    Text("Todd Myers")
                                    //Text(patient.name)
                                        .bold()
                                    //                                                .foregroundColor(.black)
                                    //                                                .font(Font.custom("Helvetica", size: 18))
                                    //Text("12/14/1968")
                                    //Text(patient.DOB)
                                    Text("55 y.o.")
                                    Text("Room#")
                                    //Text("(\(patient.calculateAge()) years old)")
                                }
                                Text("Latest Diagnoses")
                                //Text(patient.Diagnosis)
                                //Divider()
                            }.foregroundColor(.black)
                                .font(Font.custom("Helvetica", size: 18))
                            
                            
                        }.padding(.top, 50)
                            .padding(.leading, -50)
                        
                    }
                    
                    
                }.edgesIgnoringSafeArea(. top)
                //.padding(.top, 100)
                //Spacer()
                    .navigationBarHidden(true)
                    .foregroundColor(.black)
                    .edgesIgnoringSafeArea(. top)
                
            }
            
        }
        
    
        Spacer()
                        //Image(systemName: "arrow.right.circle.fill")
                        //    .font(.system(size: 20))
                    }
                }
//    .toolbar{
//        ToolbarItem(placement: .principal) {
//            Text("Todd Myers")
//                .font(.system(size: 20))
//        }
//        //Previous page
//        ToolbarItem(placement: .navigationBarLeading) {
//            Button {
//                path.append("FourthView")
//            } label: {
//                Image(systemName: "arrow.left.to.line.circle.fill")
//                    .font(.system(size: 20))
//            }
//        }
//        //Return to root
//        ToolbarItem(placement: .navigationBarLeading) {
//            Button {
//                path.append("ThirdView")
//            } label: {
//                Image(systemName: "arrow.left.circle.fill")
//                    .font(.system(size: 20))
//            }
//        }
//    }
//    .foregroundColor(.white)
//            .edgesIgnoringSafeArea(. top)
//        //Spacer()
//    .toolbar{
//        ToolbarItem(placement: .principal) {
//            Text("Todd Myers")
//                .font(.system(size: 20))
//        }
//        //Previous page
//        ToolbarItem(placement: .navigationBarLeading) {
//            Button {
//                path.append("FourthView")
//            } label: {
//                Image(systemName: "arrow.left.to.line.circle.fill")
//                    .font(.system(size: 20))
//            }
//        }
//        //Return to root
//        ToolbarItem(placement: .navigationBarLeading) {
//            Button {
//                path.append("ThirdView")
//            } label: {
//                Image(systemName: "arrow.left.circle.fill")
//                    .font(.system(size: 20))
//            }
//        }
//    }
//    .foregroundColor(.white)
//            .edgesIgnoringSafeArea(. top)
//


struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}

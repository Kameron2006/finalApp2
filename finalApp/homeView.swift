//
//  homeView.swift
//  finalApp
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct homeView: View {
    @Binding var email: String
    @State private var password = ""
    @State private var textTitle = "Submit"
    var body: some View {
        
//        ZStack {
//            Image("")
//                .imageScale(.small)
//                .foregroundColor(.accentColor)
            
            VStack {
                homePage(email: email)
                
                Text("Sign up")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.top, 200.0)
                TextField ("Email Address", text: $email)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding()
                    .border(.black, width: 3)
                TextField("Password", text: $password )
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .padding()
                    .border(.black, width: 4)
                            
                
                
                Button("Submit") {
                    textTitle = "welcome, \(email)!"
                    
                }//closes button code
                    .font(.title2)
                    .buttonStyle(.borderedProminent)
                    
                } //closes VStack
                
            }
//           .padding()
           
//    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView(email: .constant(""))
    }
}

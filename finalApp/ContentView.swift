//
//  ContentView.swift
//  finalApp
//
//  Created by Scholar on 6/26/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var email: String
    var body: some View {
        
        
        NavigationStack {
            Image("world")
                .resizable(resizingMode: .stretch)
                
              
            
        NavigationLink(destination: homeView(email: $email)) {
            Text("Welcome")
            }
           .buttonStyle(.bordered)

               }
                .font(.largeTitle)
        
        
            
        }
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView(email: #Binding)
            }
        }
    }


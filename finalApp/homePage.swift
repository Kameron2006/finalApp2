//
//  homePage.swift
//  finalApp
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct homePage: View {
    @State var email: String = ""
    var body: some View {
        
        
        VStack {
            homeView(email: $email)
            Text("Hello, \(email)")
        }
    }
}

struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}

//
//  FirstView.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.heyBlue
            Image("backgroundFirstScreen")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            Image("logo")
                .resizable()
                .frame(width: 200, height:116)
                
        }
        
    }
    
}


#Preview {
    FirstView()
}

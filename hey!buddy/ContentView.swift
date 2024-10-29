//
//  ContentView.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//
import UIKit
import SwiftUI

struct ContentView: View {
    @State private var isActive = true
    var body: some View {
        ZStack{
            if isActive == true {
                FirstView().onAppear {
                    // Задержка в 2 секунды перед переключением
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation(.easeInOut) {
                            isActive = false
                        }
                    }
                    
                }
               
            }
            else {
                mainView()
            }
        }
    }
}

#Preview {
    ContentView()
}

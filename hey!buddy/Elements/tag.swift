//
//  tag.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//

import SwiftUI

var colorsBorder : [Color: Color] = [.heyBlue: .darkBlue, .heyOrange: .darkOrange, .heyCyan: .darkCyan, .heyGreen: .darkGreen]
var colorsText : [Color: Color] = [.heyBlue: .white, .heyOrange: .white, .heyCyan: .black, .heyGreen: .black]
public func createTag(withText text: String, backgroundColor: Color) -> some View {
    let borderColor: Color = colorsBorder[backgroundColor] ?? Color.clear
    let textColor: Color = colorsText[backgroundColor] ?? Color.clear
    return Text(text)
          .padding(.horizontal, 20)
          .padding(.vertical, 10)
          .background(backgroundColor)
          .foregroundColor(textColor)
          .cornerRadius(90)
          .overlay(
            RoundedRectangle(cornerRadius: 30).stroke(borderColor, lineWidth: 1)
          )
          
          .font(.custom("Inter18pt-Regular", size: 14))
  }

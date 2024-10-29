//
//  cards.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 28.10.24.
//

import SwiftUI


var colorsDash : [Color: String] = [.heyBlue: "blueDash", .heyCyan: "cyanDash"]

//карточка обсуждений

public func createCardDiscussion(withText text: String, hashtag: String, cardColor: Color, isTheLastOne: Bool) -> some View {
    let borderColor: Color = colorsBorder[cardColor] ?? Color.clear
    let textColor: Color = colorsText[cardColor] ?? Color.clear
    return VStack (alignment: .leading) {
        HStack (alignment: .bottom){
            Text(hashtag)
                .font(.custom("Inter18pt-Regular", size: 14))
                .opacity(0.5)
            Spacer()
            createIconButton(backgroundColor: cardColor, iconName: (textColor == Color.white) ? "whiteArrowRight" : "blackArrowRight" )
            
        }
        Text(text)
            .font(.custom("Inter18pt-Regular", size: 20))
            .kerning(-1)
            .lineSpacing(0)
    }
    .padding(.horizontal, 21)
    .padding(.bottom, isTheLastOne ? 0 : 25)
    .padding(.vertical, 15)
    .foregroundColor(textColor)
    .background(cardColor)
    .border(borderColor, width: 1)
    .cornerRadius(15)
}

//карточка для целей
public func createCardGoals(withText text: String, image: String, cardColor: Color) -> some View {
    let borderColor: Color = colorsBorder[cardColor] ?? Color.clear
    let textColor: Color = colorsText[cardColor] ?? Color.clear
    
    return VStack(alignment: .leading) {
        VStack(alignment: .leading) {
            Image(image)
               
            
            Text(text)
                .font(.custom("Inter18pt-Regular", size: 20))
                .foregroundColor(textColor)
                .lineSpacing(0)
                .padding(.top, 8)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(14)
    }
    .frame(width: 360)
    .background(cardColor)
    .border(borderColor, width: 1)
    .cornerRadius(15)
} 

//карточка ту ду листа
public func createCardToDo(withText text: String, text1: String, text2:String, image: String, image1: String, color: Color) -> some View {
    let imageDash: String = colorsDash[color] ?? ""
    return VStack(alignment: .leading) {
        Text("TO DO")
            .font(.custom("Inter18pt-SemiBold", size: 24))
            .foregroundStyle(color)
            .padding(.horizontal, 14)
            .padding(.top, 14)
        VStack(alignment: .leading) {
            HStack (alignment: .top) {
                Image(image)
                Text(text)
                    .font(.custom("Inter18pt-Regular", size: 20))
                    .foregroundColor(.black)
                    .lineSpacing(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Image(imageDash)
            HStack (alignment: .top) {
                Image(image1)
                Text(text1)
                    .font(.custom("Inter18pt-Regular", size: 20))
                    .foregroundColor(.black)
                    .lineSpacing(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Image(imageDash)
            HStack (alignment: .top) {
                Image(image1)
                Text(text2)
                    .font(.custom("Inter18pt-Regular", size: 20))
                    .foregroundColor(.black)
                    .lineSpacing(0)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            Image(imageDash)
               
            
            
        }
        .padding(.horizontal, 14)
        .padding(.bottom, 14)
    }
    .frame(width: 360)
    .background(.white)
    .cornerRadius(15)
}

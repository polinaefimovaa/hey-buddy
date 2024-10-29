import SwiftUI

// круглая иконка-кнопка

public func createIconButton(backgroundColor: Color, iconName: String) -> some View {
    let borderColor: Color = colorsBorder[backgroundColor] ?? Color.clear
    return ZStack {
        Circle()
            .fill(Color.white.opacity(0.3))
            .frame(width: 40, height: 40)
            .overlay{
                Circle()
                    .stroke(borderColor, lineWidth: 1)
            }
            .shadow(color: borderColor.opacity(0.3), radius: 3, x: 2, y: 2)
                        
        Image(iconName)
            .frame(width: 28, height: 28)
    }
}
//черная кнопка со стрелкой
public func createButtonArrow(withText text: String, widthButton: CGFloat?) -> some View {
    return HStack {
        Text(text)
            .font(.custom("Inter18pt-SemiBold", size: 15))
            .foregroundStyle(.white)
            
        Image("arrowRight")
            .frame(width: 27, height: 27)
                                
        }
    .padding(.leading, 16)
    .padding(.trailing, 8)
    .frame(width: widthButton, height: 43)
    .background(Color.black)
    .cornerRadius(45)
}

//кнопки без иконок на всю ширину экрана

public func createButtonNoIcons(withText text: String, colorButton: Color) -> some View {
    return ZStack {
        Text(text)
            .font(.custom("Inter18pt-SemiBold", size: 15))
            .foregroundStyle(.white)
            .padding(.vertical, 9)
    }
    .frame(width: 361, height: 48)
    .background(colorButton)
    .cornerRadius(40)
    
}

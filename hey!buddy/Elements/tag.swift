//
//  tag.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//

import SwiftUI

struct tag: View {
    private var colorsBorder : [Color: Color] = [.heyBlue: .darkBlue, .heyOrange: .darkOrange, .heyCyan: .darkCyan, .heyGreen: .darkGreen]
    private var colorsText : [Color: Color] = [.blue: .white, .orange: .white, .cyan: .black, .green: .black]
    var body: some View {
        VStack {
            // Используем функцию для создания тегов
            createTag(withText: "Первый тег", backgroundColor: .blue)
            createTag(withText: "Второй тег", backgroundColor: .green)
            createTag(withText: "Третий тег", backgroundColor: .orange)
        }
        .padding() // Добавляем отступы вокруг VStack
    }
    
    // Функция для создания тега
    func createTag(withText text: String, backgroundColor: Color) -> some View {
        let borderColor: Color = colorsBorder[backgroundColor] ?? Color.clear
        print(borderColor)
        let textColor: Color = colorsText[backgroundColor] ?? Color.clear
        return Text(text)
              .padding(.horizontal, 20) // Отступы слева и справа
              .padding(.vertical, 14) // Отступы сверху и снизу
              .background(backgroundColor) // Задаем цвет фона
              .foregroundColor(textColor) // Задаем цвет текста
              .overlay(
                RoundedRectangle(cornerRadius: 20).stroke(borderColor, lineWidth: 10)
              )
              .cornerRadius(90)
              .font(.headline)
      }
}

#Preview {
    tag()
}

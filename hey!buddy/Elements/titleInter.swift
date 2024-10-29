import SwiftUI


//тут текстовые функции
//заголовки
public func createTitle(withText text: String, titleColor: Color, fontSize: CGFloat) -> some View {
    return Text(text)
        .font(.custom("Inter18pt-SemiBold", size: fontSize))
        .kerning(-2)
        .foregroundColor(titleColor)
}
//тут инпуты с лейблом
struct InputView: View {
    @Binding var inputText: String // Переменная для хранения текста ввода, передается из родительской структуры
    let inputLabel: String
    let inputPlaceholder: String
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text(inputLabel) // Отображаем текст, переданный в функцию
                .foregroundStyle(.black.opacity(0.6))
                .font(.custom("Inter18pt-Regular", size: 16))
            VStack {
                TextField(inputPlaceholder, text: $inputText)
                    .font(.custom("Inter18pt-Regular", size: 16))
                    .padding(.horizontal,30)
                    .padding(.vertical,12)
                    .keyboardType(.emailAddress)
                    
            }
            .foregroundColor(.black.opacity(0.6))
            .background(.heyGrey)
            .cornerRadius(50)
        }
        
    }
}

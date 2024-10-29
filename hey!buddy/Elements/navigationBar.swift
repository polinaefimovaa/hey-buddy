import SwiftUI

public func navigationBar(presentationMode: Binding<PresentationMode>, color:Color) -> some View {
    return VStack {
    }
    
    .toolbarBackground(
        Color.heyBlue,for: .navigationBar
    )
    
    .toolbar {
        
        ToolbarItem(placement: .navigationBarLeading) {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                createIconButton(backgroundColor: color, iconName: "cancel")
            }
            
        }
        ToolbarItem(placement: .principal) {
            Text("Профиль")
                .font(.custom("Inter18pt-Regular", size: 18))
                .foregroundColor(.white)
        }
        
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(action: {
                // Действие для правой кнопки
            }) {
                createIconButton(backgroundColor: color, iconName: "changeLanguage")
                    .padding(.vertical,15)
            }
            
        }
    }
}

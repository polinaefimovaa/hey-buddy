import SwiftUI

struct profileView: View {
    @State private var nameInput: String = UserDefaults.standard.string(forKey: "name") ?? ""
    @State private var surnameInput: String = UserDefaults.standard.string(forKey: "surname") ?? ""
    @State private var emailInput: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @State private var phoneInput: String = UserDefaults.standard.string(forKey: "phone") ?? ""
    @State private var tgInput: String = UserDefaults.standard.string(forKey: "tg") ?? ""

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .bottom ){
            VStack(spacing: 30) {
                    Image("personProfile")
                        .padding(.top, 50)
                    VStack(spacing: 16) {
                        InputView(inputText: $nameInput, inputLabel: "Ваше имя", inputPlaceholder: "Имя")
                        InputView(inputText: $surnameInput, inputLabel: "Ваша фамилия", inputPlaceholder: "Фамилия")
                        InputView(inputText: $emailInput, inputLabel: "Ваш e-mail", inputPlaceholder: "E-mail")
                        InputView(inputText: $phoneInput, inputLabel: "Ваш номер телефона", inputPlaceholder: "Номер телефона")
                        InputView(inputText: $tgInput, inputLabel: "Ваш телеграм", inputPlaceholder: "Телеграм")
                        VStack {
                            Button(action: {
                                clearInputs()
                                saveData()
                            })
                            {
                                createButtonNoIcons(withText: "Отменить", colorButton: .black.opacity(0.5))
                            }
                            Button(action: {
                                saveData()
                            }) {
                                createButtonNoIcons(withText: "Сохранить", colorButton: .black)
                                                   }
                        }
                        .padding(.top, 10)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 40)
//                    .background(Color.pink)
                    .background(Image("backgroundProfile").resizable())
                    
                }
            }
            .onAppear {
                    loadData()
                }
            .background(.heyBlue)
            .navigationBarBackButtonHidden(true) // Скрываем стандартную кнопку
            .background(navigationBar(presentationMode: presentationMode, color: .heyBlue))
    }
    
    // Сбрасываем все текстовые поля
    func clearInputs() {
            nameInput = ""
            surnameInput = ""
            emailInput = ""
            phoneInput = ""
            tgInput = ""
        }
    func loadData() {
            nameInput = UserDefaults.standard.string(forKey: "name") ?? ""
            surnameInput = UserDefaults.standard.string(forKey: "surname") ?? ""
            emailInput = UserDefaults.standard.string(forKey: "email") ?? ""
            phoneInput = UserDefaults.standard.string(forKey: "phone") ?? ""
            tgInput = UserDefaults.standard.string(forKey: "tg") ?? ""
        }
    func saveData() {
            UserDefaults.standard.set(nameInput, forKey: "name")
            UserDefaults.standard.set(surnameInput, forKey: "surname")
            UserDefaults.standard.set(emailInput, forKey: "email")
            UserDefaults.standard.set(phoneInput, forKey: "phone")
            UserDefaults.standard.set(tgInput, forKey: "tg")
        }
}

#Preview {
    profileView()
}

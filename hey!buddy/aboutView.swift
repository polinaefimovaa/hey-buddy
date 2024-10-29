//
//  ContentView.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//
import UIKit
import SwiftUI

struct aboutView: View {
    @State private var isActive = true
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Image("aboutGirls")
                    VStack (alignment: .leading) {
                        HStack(alignment: .top){
                            createTitle(withText: "НАШИ ЦЕЛИ", titleColor: .black, fontSize: 36)
                            Text("(1)")
                                .font(.custom("Inter18pt-Italic", size: 16))
                        }
                        createCardGoals(withText: "Собрать и структурировать всю информацию о документах, подготовке к переезду и учебе", image: "goal1", cardColor: .heyBlue)
                        createCardGoals(withText: "Упростить процесс подбора бадди для иностранных студентов", image: "goal2", cardColor: .heyGreen)
                        createCardGoals(withText: "Создать больше возможностей для жизни иностранных студентов в России", image: "goal3", cardColor: .heyCyan)
                        createCardGoals(withText: "Популяризовать программу бадди среди местных студентов", image: "goal4", cardColor: .heyOrange)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 40)
                }
                ZStack {
                    Color.heyBlue.ignoresSafeArea()
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            VStack(alignment: .leading) {
                                createTitle(withText: "КАК НАЙТИ", titleColor: .white, fontSize: 36)
                                createTitle(withText: "БАДДИ?", titleColor: .white, fontSize: 36)
                            }
                            
                            Text("(2)")
                                .font(.custom("Inter18pt-Italic", size: 16))
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        createCardToDo(withText: "Заполни анкету, указав свои данные, программу и увлечения", text1: "Ожидай своего бадди, в ближайшее времяон выберет тебя", text2: "Познакомься с бадди и задавай ему интересующие вопросы", image: "filledToDoBlue", image1: "emptyToDoBlue", color: .heyBlue)
                    }
                    .padding(.vertical, 50)
                }
                ZStack {
                    Color.heyCyan.ignoresSafeArea()
                    VStack(alignment: .leading) {
                        HStack(alignment: .top){
                            createTitle(withText: "КАК БЫТЬ БАДДИ?", titleColor: .white, fontSize: 36)
                            
                            Text("(3)")
                                .font(.custom("Inter18pt-Italic", size: 16))
                                .foregroundStyle(.white)
                        }
                        Spacer()
                        createCardToDo(withText: "Зарегистрируйся, указав свои данные и увлечения", text1: "Выбери себе иностранного студента среди всех анкет", text2: "Выбери себе иностранного студента среди всех анкет", image: "filledToDoCyan", image1: "emptyToDoCyan", color: .heyCyan)
                    }
                    .padding(.vertical, 50)
                }
                .padding(.top, -10)
                
            }
            
            
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true) // Скрываем стандартную кнопку
        .background(navigationBar(presentationMode: presentationMode, color:.heyCyan))
    }
}

#Preview {
    aboutView()
}

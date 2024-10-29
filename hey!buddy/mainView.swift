//
//  mainView.swift
//  hey!buddy
//
//  Created by Полина Ефимова on 27.10.24.
//

import SwiftUI

struct mainView: View {
	@State private var email: String = ""
	@State private var showAlert: Bool = false
	var body: some View {
		NavigationStack {
			ZStack {
				Color.heyBlue
					.ignoresSafeArea()
				ScrollView {
					VStack (alignment: .leading, spacing: 40){
//			верхняя навигация: профиль и смена языка
						VStack (alignment: .leading, spacing: 10){
							HStack {
								NavigationLink(destination: profileView()) {
									Image("person")
								}
								
								
								Spacer()
								createIconButton(backgroundColor: .heyBlue, iconName: "changeLanguage")
							}
							.padding(.bottom, 10)
//                блок с заголовком и кнопкой
						VStack (alignment: .leading) {
							Text("Бадди-программа")
								.font(.custom("Inter18pt-Regular", size: 16))
								.foregroundStyle(.heyGrey)
							VStack (alignment: .leading, spacing: -10){
								createTitle(withText: "ПОМОГАЕМ", titleColor: .white, fontSize: 46)
								createTitle(withText: "ИНОСТРАННЫМ", titleColor: .white, fontSize: 46)
								createTitle(withText: "СТУДЕНТАМ", titleColor: .white, fontSize: 46)
								}
						NavigationLink(destination: aboutView()) {
							createButtonArrow(withText: "подробнее о нас", widthButton: 188)
						}
					}
				}
				.padding(.horizontal, 16)
				.frame(alignment: .topLeading)
//			блок с описанием проекта
			VStack {
				Image("pixelPerson")
					.frame(width: 128, height: 109)
				Text("Hey!Buddy — медиа-сервис для иностранных студентов Вышки, а также их бадди — волонтеров, которые помогают им с адаптацией к жизни и учёбе в России.")
						.font(.custom("Inter18pt-Regular", size: 20))
						.frame(width: 361)
						.multilineTextAlignment(.center)
				HStack {
					createTag(withText:"обучение", backgroundColor: .heyOrange)
						.rotationEffect(.degrees(-12))
					Spacer()
					createTag(withText:"заселение", backgroundColor: .heyGreen)
						.rotationEffect(.degrees(2))
					Spacer()
					createTag(withText:"документы", backgroundColor: .heyBlue)
						.rotationEffect(.degrees(15))
				}
				.padding(.top, 15)
				.padding(.horizontal, 16)
				HStack {
					Spacer()
					createTag(withText:"культура", backgroundColor: .heyBlue)
						.rotationEffect(.degrees(-10))
					Spacer()
					createTag(withText:"общение", backgroundColor: .heyCyan)
						.rotationEffect(.degrees(9))
						.padding(.top, 10)
					Spacer()
				}
				.padding(.top, 8)
								
			}
			.padding(.vertical, 80)
			.background(
				Image("backgroundDescription")
					.resizable()
					.scaledToFill()
			)
			
// блок с обсуждениями
			ZStack {
				VStack (alignment: .leading) {
					VStack (alignment: .leading, spacing: -10) {
						createTitle(withText: "ОБСУЖДАЕМ", titleColor: .white, fontSize: 36)
						createTitle(withText: "ВАЖНОЕ", titleColor: .white, fontSize: 36)
						createTitle(withText: "И ИНТЕРЕСНОЕ", titleColor: .white, fontSize: 36)
					}
					VStack (spacing: -25) {
						createCardDiscussion(withText: "Как вы прошли период оклиматизации? Я не могу принять такое большое количество снега на улице :(((((((", hashtag: "#жизньвроссии", cardColor: Color.heyOrange, isTheLastOne: false)
						createCardDiscussion(withText: "Подскажите, где пройти медицинское обследование? Много ли это займет времени", hashtag: "#документы", cardColor: Color.heyGreen, isTheLastOne: false)
						createCardDiscussion(withText: "Хочу переехать в другую комнату в общежитии, это вообще возможно? Кто сталкивался?", hashtag: "#учеба", cardColor: Color.heyBlue, isTheLastOne: true)
					}
					
				}
				.padding(.vertical, 80)
				.padding(.horizontal, 16)
			}
			.zIndex(-1)
			.background(Color.heyCyan)
			.padding(.top, -72)
			
		}
//запуск проекта
					ZStack {
						VStack(alignment: .leading) {
							VStack(alignment: .leading, spacing: -10) {
								createTitle(withText: "БУДЬ В КУРСЕ", titleColor: .black, fontSize: 36)
								createTitle(withText: "ЗАПУСКА ПРОЕКТА", titleColor: .black, fontSize: 36)
							}
							Spacer()
							Text("Подписывайся на рассылку, чтобы не пропустить все самое интересное!")
									.font(.custom("Inter18pt-Regular", size: 20))
									.frame(width: 361)
									.padding(.leading, -7)
							Image("rocket")
								
							VStack {
								TextField("Email", text: $email)
									.font(.custom("Inter18pt-Regular", size: 16))
									.padding(.horizontal,30)
									.padding(.vertical,12)
									.keyboardType(.emailAddress)
									
							}
							.foregroundColor(.black.opacity(0.6))
							.background(.heyGrey)
							.cornerRadius(50)
							Button(action: {
											showAlert = true
										}) {
											createButtonArrow(withText: "подписаться", widthButton: 360)
										}
										.alert(isPresented: $showAlert) {
														// Определяем содержимое алерта
														Alert(
															title: Text("Почта принята!"),
															message: Text("Ваше сообщение было успешно отправлено."),
															dismissButton: .default(Text("ОК"))
														)
													}
							
							
						}
						.padding(.horizontal, 16)
						.padding(.vertical,60)
						
					}
					.background(
						Image("backgroundLaunch")
							.scaledToFill()
					)
					
					.padding(.top, -10)
	}
			
   }
		}
			
}
}

#Preview {
    mainView()
}

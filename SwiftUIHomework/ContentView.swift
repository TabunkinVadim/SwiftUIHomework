//
//  ContentView.swift
//  SwiftUIHomework
//
//  Created by Табункин Вадим on 09.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var serchText: String = ""
    @State private var score: Float = 0.0

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Image(systemName: "globe")
                    .modifier(ImageModifier())
                Text("Заголовок")
                    .modifier(TitleModifier())
                Text("Основной текст")
                    .modifier(NormalTextModifier())
                Spacer()
                NavigationLink("ProfileView", destination: ProfileView().navigationBarHidden(true))
                    .padding()
                    .background(.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(15)
                Spacer()
                NavigationLink("Personages", destination: PersonagesView())
                    .padding()
                    .background(.pink)
                    .foregroundColor(.black)
                    .cornerRadius(15)
                Spacer()
                Text("\($score.wrappedValue)")
                Slider(value: $score) { _ in
                    ()
                }
                .padding(50)
            }
            .navigationTitle("SwiftUI")
            .searchable(text: $serchText)
        }
    }
}

struct ImageModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .padding(.all, 20.0)
            .imageScale(.large)
            .foregroundColor(.accentColor)
    }
}

struct TitleModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.title.bold())
            .background(.mint)
    }
}

struct NormalTextModifier: ViewModifier {
    func body (content: Content) -> some View {
        content
            .font(.body)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(.brown)
    }
}


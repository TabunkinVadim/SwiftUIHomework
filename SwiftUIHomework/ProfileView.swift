//
//  ProfileView.swift
//  SwiftUIHomework
//
//  Created by Табункин Вадим on 09.10.2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var username: String = ""
    @State private var password: String = ""



    var body: some View {
        VStack(alignment: .center, spacing: 0.0){
            Spacer()
                .frame(height: 120.0)
            Image("logo")
                .resizable(resizingMode: .stretch)
                .frame(width: 100, height: 100, alignment: .center)
            Spacer()
                .frame(height: 120.0)
            HStack{
                Spacer()
                    .frame(width: 16)
                VStack {

                    TextField("Email of phone", text: $username)
                        .frame(height: 50)
                        .padding(.top, 1)
                        .padding(.horizontal, 5)
                        .background(Color(.systemGray6))

                    SecureField("Password", text: $password)
                        .padding(.horizontal, 5)
                        .frame(height: 50)
                        .overlay(Rectangle().frame(width: nil, height: 0.5, alignment: .top).foregroundColor(Color(.lightGray)), alignment: .top)
                        .padding(.top, -9)
                        .background(Color(.systemGray6))
                }
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.lightGray), lineWidth: 0.5)
                )
                .frame(height: 100)

                Spacer()
                    .frame(width: 16)
            }

            Spacer()
                .frame(height: 16)

            HStack{
                Spacer()
                    .frame(width: 16)

                NavigationLink("Log in", destination: ProfileView().navigationBarHidden(true))
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: .infinity,idealHeight: 50)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.3006331325, green: 0.5860761404, blue: 0.8579485416, alpha: 1)))
                    .cornerRadius(10)

                Spacer()
                    .frame(width: 16)
            }

            Spacer()
                .frame(height: 180)

            HStack(alignment: .center){
                VStack{
                    Image(systemName: "house.fill")
                        .imageScale(.large)

                    Text("Feed")
                        .font(.footnote.bold())
                }
                .padding(.horizontal, 5)
                .foregroundColor(.gray)

                VStack{
                    Image(systemName: "person.fill")
                        .imageScale(.large)

                    Text("Profile")
                        .font(.footnote.bold())
                }
                .padding(.horizontal, 5)
                .foregroundColor(.accentColor)

                VStack{
                    Image(systemName: "music.note")
                        .imageScale(.large)

                    Text("Plaeyr")
                        .font(.footnote.bold())
                }
                .padding(.horizontal, 5)
                .foregroundColor(.gray)

                VStack{
                    Image(systemName: "play.rectangle.fill")
                        .imageScale(.large)

                    Text("Video")
                        .font(.footnote.bold())
                }
                .padding(.horizontal, 5)
                .foregroundColor(.gray)

                VStack{
                    Image(systemName: "mic.fill")
                        .imageScale(.large)

                    Text("Recorder")
                        .font(.footnote.bold())
                }
                .padding(.horizontal, 5)
                .foregroundColor(.gray)
            }
            .padding(.vertical)
            .alignmentGuide(.bottom) { _ in  -20 }
            .frame(minWidth: 0, maxWidth: .infinity,idealHeight: 200)
            .background(Color(.systemGray5))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

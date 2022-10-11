//
//  PersonageDetail.swift
//  SwiftUIHomework
//
//  Created by Табункин Вадим on 11.10.2022.
//

import SwiftUI

struct PersonageDetail: View {
    var photo: Image
    var name: Text
    var about: Text

    var body: some View {
        VStack(alignment: .center){
            photo
                .fitToAspectRatio(.square)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .frame(width: 200, height: 200)
            name
                .font(.largeTitle)
            Spacer()
                .frame(height: 30.0)
            ScrollView{
                about
                    .padding()
            }
            Spacer()
        }
    }
}

struct PersonageDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonageDetail(photo: personages[3].photo,
                        name: personages[3].name,
                        about: personages[3].about)
    }
}

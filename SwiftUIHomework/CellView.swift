//
//  CellView.swift
//  SwiftUIHomework
//
//  Created by Табункин Вадим on 11.10.2022.
//

import SwiftUI

struct CellView: View {
    var personage: Personage
    var body: some View {
        VStack {
            VStack{
                HStack{
                    personage.photo
                        .fitToAspectRatio(.square)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .frame(width: 100, height: 100)
                    Spacer()
                        .frame(width: 20.0)
                    VStack(alignment: .leading){
                        personage.name
                            .font(.title)
                        personage.work
                            .font(.subheadline)
                            .colorMultiply(.gray)
                    }
                }
            }
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(personage: personages[0])
    }
}

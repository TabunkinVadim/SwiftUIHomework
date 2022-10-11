//
//  PersonagesView.swift
//  SwiftUIHomework
//
//  Created by Табункин Вадим on 10.10.2022.
//

import SwiftUI


struct PersonagesView: View {

    var body: some View {
            List(0 ..< personages.count) { personage in
                NavigationLink{
                    PersonageDetail(photo: personages[personage].photo,
                                    name: personages[personage].name,
                                    about: personages[personage].about)
                } label: {
                    CellView(personage: personages[personage])
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Personages")
    }
}

struct PersonagesView_Previews: PreviewProvider {
    static var previews: some View {
        PersonagesView()
    }
}

/// Common aspect ratios
public enum AspectRatio: CGFloat {
    case square = 1
    case threeToFour = 0.75
    case fourToThree = 1.75
}
/// Fit an image to a certain aspect ratio while maintaining its aspect ratio
public struct FitToAspectRatio: ViewModifier {
    private let aspectRatio: CGFloat
    public init(_ aspectRatio: CGFloat) {
        self.aspectRatio = aspectRatio
    }
    public init(_ aspectRatio: AspectRatio) {
        self.aspectRatio = aspectRatio.rawValue
    }
    public func body(content: Content) -> some View {
        ZStack {
            Rectangle()
                .fill(Color(.clear))
                .aspectRatio(aspectRatio, contentMode: .fit)
            content
                .scaledToFill()
                .layoutPriority(-1)
        }
        .clipped()
    }
}
// Image extension that composes with the `.resizable()` modifier
public extension Image {
    func fitToAspectRatio(_ aspectRatio: CGFloat) -> some View {
        self.resizable().modifier(FitToAspectRatio(aspectRatio))
    }
    func fitToAspectRatio(_ aspectRatio: AspectRatio) -> some View {
        self.resizable().modifier(FitToAspectRatio(aspectRatio))
    }
}

//
//  CTRating2.swift
//  TryToCreateMyPackages
//
//  Created by Macbook on 23.05.2022.
//

import SwiftUI

public struct CTRating2: View {
    var maxRating: Int
    @Binding var currentRating: Int
    var width: Int
    var color: UIColor
    var ratingImage: RatingImage
    
    /// Description
    /// - Parameters:
    ///   - maxRating: maxRating description
    ///   - currentRating: currentRating description
    ///   - width: width description
    ///   - color: color description
    ///   - ratingImage: ratingImage description

   
    public init(maxRating: Int, currentRating: Binding<Int>, width: Int = 20, color: UIColor = .systemYellow, ratingImage: RatingImage = .star) {
        self.maxRating = maxRating
        self._currentRating = currentRating
        self.width = width
        self.color = color
        self.ratingImage = ratingImage
    }

    public var body: some View {
        HStack {
            ForEach(0..<maxRating) { rating in
                correctImage(for: rating)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(color))
                    .onTapGesture {
                        self.currentRating = rating + 1
                    }
            }
        }.frame(width: CGFloat(maxRating * width))
    }
    
    func correctImage(for rating: Int) -> Image {
        if rating < currentRating {
            return ratingImage.fillImage
        } else {
            return ratingImage.openImage
        }
    }
}

struct CTRating2_Previews: PreviewProvider {
    static var previews: some View {
        CTRating2(maxRating: 5, currentRating: .constant(3))
    }
}

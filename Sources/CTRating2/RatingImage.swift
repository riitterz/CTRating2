//
//  RatingImage.swift
//  TryToCreateMyPackages
//
//  Created by Macbook on 23.05.2022.
//

import SwiftUI

public enum RatingImage: String {
    case star = "SF_star"
    case heart = "SF_heart"
    case thumbsUp = "SF_hand.thumbsup"
    case bookmarl = "SF_bookmarl"
    case flag = "SF_flag"
    case bell = "SF_bell"
        
    case baseball
    case basketball
    case foorball
    
    var fillImage: Image {
        rawValue.prefix(3) == "SF_" ?
        Image(systemName: String(rawValue.dropFirst(3)) + ".fill")
        :
        Image("\(rawValue).fill", bundle: .module)
    }
    var openImage: Image {
        rawValue.prefix(3) == "SF_" ?
        Image(systemName: String(rawValue.dropFirst(3)))
        :
        Image(rawValue, bundle: .module)
    }
}


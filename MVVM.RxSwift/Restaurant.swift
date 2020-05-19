//
//  Restaurant.swift
//  MVVM.RxSwift
//
//  Created by seunghwan.yoo on 2020/05/19.
//  Copyright © 2020 seunghwan.yoo. All rights reserved.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}

enum Cuisine: String, Decodable {
    case european
    case indian
    case mexican
    case french
    case english
}

//
//  RestaurantViewModel.swift
//  MVVM.RxSwift
//
//  Created by seunghwan.yoo on 2020/05/19.
//  Copyright © 2020 seunghwan.yoo. All rights reserved.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}

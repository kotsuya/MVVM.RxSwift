//
//  RestaurantsListViewModel.swift
//  MVVM.RxSwift
//
//  Created by seunghwan.yoo on 2020/05/19.
//  Copyright © 2020 seunghwan.yoo. All rights reserved.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map { $0.map { RestaurantViewModel(restaurant: $0)} }
    }
}

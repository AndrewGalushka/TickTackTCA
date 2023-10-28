//
//  CounterFeature.swift
//  TickTackTCA
//
//  Created by Andrii Halushka on 28.10.2023.
//

import ComposableArchitecture

struct CounterFeature: Reducer {
    struct State {
        var count = 0
    }
    
    enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .decrementButtonTapped:
            state.count -= 1
            return Effect<Action>.none
        case .incrementButtonTapped:
            state.count += 1
            return Effect<Action>.none
        }
    }
}

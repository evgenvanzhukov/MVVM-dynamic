//
//  Dynamic.swift
//  MVVM-dynamic
//
//  Created by Evgen on 24/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import Foundation

class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    
    private var listener: Listener?
    
    var value : T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
     
    
    init(_ value: T) {
        self.value = value
    }
}

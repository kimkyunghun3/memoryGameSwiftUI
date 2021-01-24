//
//  Array+Only.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/24.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil 
    }
}

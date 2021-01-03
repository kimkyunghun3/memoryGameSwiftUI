//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/03.
//

struct MemoryGame<CardContent> {
    var cards: Array<Card>.Type

    func choose(card: Card) {
        print("card chosen: \(card)")
    }

    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}

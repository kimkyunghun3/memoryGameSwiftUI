//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/03.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        if let chosenIndex = cards.firstIndex(matching: card){
            self.cards[chosenIndex].isFaceUp = !self.cards[chosenIndex].isFaceUp
        }
        
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
    
    
    init(numberOFPairsOfCards: Int, cardContentFacrtory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOFPairsOfCards {
            let content = cardContentFacrtory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}

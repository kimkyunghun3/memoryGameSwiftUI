//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/03.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return "😄"
}

class EmojiMemoryGame {
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberOFPairsOfCards: 2, cardContentFacrtory: createCardContent)//model call할 때 사용한다, emoji가 String이므로 String으로 선언
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }


    // MARK: - Intent(s)
    func choose(card:MemoryGame<String>.Card){
        model.choose(card: card)    //Model에 Card를 선택하라고 ask한다
    }
}

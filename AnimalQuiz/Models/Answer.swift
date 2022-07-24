//
//  Answer.swift
//  AnimalQuiz
//
//  Created by Дмитрий Процак on 25.07.2022.
//


struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case rabbit = "🐰"
    case cat = "🐱"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Собака"
        case .rabbit:
            return "Кролик"
        case .cat:
            return "Кошка"
        case .turtle:
            return "Черепаха"
        }
    }
    
}

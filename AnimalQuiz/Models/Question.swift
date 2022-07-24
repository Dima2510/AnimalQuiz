//
//  Question.swift
//  AnimalQuiz
//
//  Created by Дмитрий Процак on 25.07.2022.
//



enum ResponseType {
    case single
    case multiple
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answer: [Answer]
}


extension Question {
    static func getQuestion() -> [Question] {
        return [
            Question(text: "Какую пищу вы предпочитаете?",
                     type: .single,
                     answer: [
                        Answer(text: "Стейк", type: .dog),
                        Answer(text: "Рыба", type: .cat),
                        Answer(text: "Морковка", type: .rabbit),
                        Answer(text: "Кукуруза", type: .turtle)
            ]),
            Question(text: "Что вы любите делать?",
                     type: .multiple,              //так как можем вызвать несколько switch кейсов
                     answer: [
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Есть", type: .turtle)
            ]),
            Question(text: "Любите ли вы поездки на машине?",
                     type: .range,               //так как используем слайдер
                     answer: [
                        Answer(text: "Обожаю", type: .dog),
                        Answer(text: "Обожаю", type: .cat),
                        Answer(text: "Ненавижу", type: .rabbit),
                        Answer(text: "Ненавижу", type: .turtle)
            ])
            
        ]
    }
}

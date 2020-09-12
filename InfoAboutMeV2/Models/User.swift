//
//  User.swift
//  InfoAboutMeV2
//
//  Created by Олеся Данилина on 04.09.2020.
//  Copyright © 2020 Lesia Danilina. All rights reserved.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Олеся Данилина",
                hobbies: [
                    Hobby(
                        title: "Живопись",
                        descriptionOne: "Живопись -  это мое хобби и отдушина, я отдыхаю когда рисую. Люблю пробовать новые направления.",
                        descriptionTwo: "Одни из любимых - это холст и масляные краски, акварель, и конечно, цифровой рисунок. Цифровую иллюстрацию делаю в основном на Ipad в Procreate или в Photoshop."
                    ),
                    Hobby(
                        title: "Тесла",
                        descriptionOne: "Тесла - это моя собака. Породы мальтийская болонка и весом всего 2,5 кг. Люблю ее бесконечно. Она мой фамильяр и вечный спутник.",
                        descriptionTwo: "Мы путешествуем по разным странам всегда вместе. Тесла знает много команд, мы ходим на трюковые тренировки и аджилити."
                    ),
                    Hobby(
                        title: "Мотоцикл",
                        descriptionOne: "Одно из недавних моих увлечений - это байк) Мощный, красивый и невероятно тяжелый. Встретил он меня сурово, в первую же поездку сильно обожгла ногу об трубу, теперь знаю что садится и слазить с него можно только с левой стороны.",
                        descriptionTwo: "Знающие люди потом объяснили - что такой ожог называют «мотопоцелуй». Байк - вещь очень опасная, ездить лучше спокойно и максимально использовать мотоэкипировку. Но что-то в нем есть, он успокаивает и разгружает голову."
                    )
                ],
                education: [
                    Education(
                        year: "2008 - 2011",
                        university: "УГЛТУ",
                        facultet: "«Ландшафтное строительство и дизайн»"
                    )
                ]
            )
        )
    }
}

struct Person {
    let name: String
    let hobbies: [Hobby]
    let education: [Education]
}

struct Hobby {
    let title: String
    let descriptionOne: String
    let descriptionTwo: String
}

struct Education {
    let year: String
    let university: String
    let facultet: String
}

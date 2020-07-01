//
//  Character.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import Foundation

struct Players {
    let characters = [Player]()
}

struct Player: Identifiable {
    let id: UUID
    let name: String
    let kart: Kart
    let description: String
}

extension Player: Codable {}

struct Repository {
    
    static let players = [
        Player(
            id: UUID(),
            name: "mario",
            kart: Kart(
                color: .red,
                topSpeed: 68,
                timeToTopSpeed: 5.10,
                weight: .medium
            ),
            description:
                """
                Mario has very average stats. His times are very close to Luigi's.
                
                Mario's weight class is average meaning he can be very useful in battle mode because he can smash little guys and can still move reasonably fast.
                """
        ),
        Player(
            id: UUID(),
            name: "luigi",
            kart: Kart(
                color: .green,
                topSpeed: 68,
                timeToTopSpeed: 5.30,
                weight: .medium
            ),
            description:
                """
                Luigi is very close to Mario, the only difference is Luigi is slightly faster at getting to 30 kmph and Mario is slightly faster at getting to 50 kmph.

                They have the same Top Speed and Weight.

                Mario also is slightly slower at getting to his top speed, but the difference is very small.
                """
        ),
        Player(
            id: UUID(),
            name: "peach",
            kart: Kart(
                color: .pink,
                topSpeed: 68,
                timeToTopSpeed: 3.80,
                weight: .light
            ),
            description:
                """
                Peach is very useful because she has a top speed of 68, same as Mario and Luigi and she has better acceleration.

                Her only flaw is that by going fast and having little weight she can get smashed much easier.
                
                This still doesn't stop her from being one of the best karts.
                """
        ),
        Player(
            id: UUID(),
            name: "toad",
            kart: Kart(
                color: .blue,
                topSpeed: 66,
                timeToTopSpeed: 3.80,
                weight: .light
            ),
            description:
                """
                Toad is definitely a speedy little guy.

                He has the fastest 30 kmph time and 2nd fastest 50 kmph time.
                
                He also has a disadvantage with being light and quick but less so than Peach because Toad can get back on his feet much quicker because of high acceleration.

                Just don't use him for Battle Mode!
                """
        ),
        Player(
            id: UUID(),
            name: "yoshi",
            kart: Kart(
                color: .green,
                topSpeed: 66,
                timeToTopSpeed: 3.20,
                weight: .light
            ),
            description:
                """
                Yoshi is second in acceleration only to Toad but Yoshi gets to his high speed the fastest out of anyone.

                Also his weight is an ok score for a light-weight because his high acceleration lets him comeback from falls easily.
                """
        ),
        Player(
            id: UUID(),
            name: "dk",
            kart: Kart(
                color: .yellow,
                topSpeed: 70,
                timeToTopSpeed: 4.20,
                weight: .heavy
            ),
            description:
                """
                Donkey Kong is a very average character.

                He's right in the middle for acceleration and top speed within his weight class.
                """
        ),
        Player(
            id: UUID(),
            name: "wario",
            kart: Kart(
                color: .purple,
                topSpeed: 70,
                timeToTopSpeed: 4.00,
                weight: .heavy
            ),
            description:
                """
                Wario is very, very, close is stats with D.k.

                Wario has slightly better acc. when it comes down to Top Speed time but D.k. is faster at getting to 50 kmph.

                Overall though they are very similar.
                """
        ),
        Player(
            id: UUID(),
            name: "bowser",
            kart: Kart(
                color: .red,
                topSpeed: 70,
                timeToTopSpeed: 3.50,
                weight: .heavy
            ),
            description:
                """
                Bowser is the fastest of all the heavy-weights.

                He is also very heavy, just like the others, but because of his high speed Bowser's weight is easier to use to his advantage as far as slamming into others.
                """
        )
    ]
}

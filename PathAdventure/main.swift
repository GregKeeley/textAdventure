//
//  main.swift
//  PathAdventure
//
//  Created by Gregory Keeley on 10/1/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

print("""
Running late for class at 9:10am, you have three options to get to Pursuit.

1: Subway
2: Bus
3: Walk

Which do you choose?
""")
var pathNum = Int(readLine() ?? "-1") ?? -1

if pathNum == 1 {
    print("""
You walk 10 minutes to the subway, and swipe in. The local is about to arrive, and the express is not far behind.
Do you take the local or the express?

1: Local
2: Express
""")
}
let subwayPath1 = Int(readLine() ?? "-1") ?? -1






if subwayPath1 == 1 {
    print("""
You get on the local train, put on some music and cross your fingers the train will arrive on time.
With seconds to spare, you run to the class, sweaty but on time. Congratulations! It is time to code.
""")
} else if subwayPath1 == 2 {
    print("""
You wait for the express and watch the local leave the station. The train rolls in, you hop on and the doors close.
Halfway to the express stop, the train comes to a sudden halt. You hear an annoucement "Ladies and gentleman, due to
some unruly teenagers pulling the emergency brakes, we are cannot move until we fix the brakes. Sorry."
You are late to class after a 3 hour delay.
""")
}


if pathNum == 2 {
    print("""
You walk 5 minutes to the bus, and see no bus in sight. You can wait, or you can continue walking to the subway.
Do you wait, or walk to the subway?

1: Wait
2: Walk to subway
""")
}

let busPath = Int(readLine() ?? "-1" ) ?? -1

var busTime = Int.random(in: 1...60)




if busPath == 1 {
    switch busTime {
    case 1...15:
        print("It took the bus \(busTime) to arrive. You arrive in time to learn some coding!")
    case 15...30:
        print("It took the bus \(busTime) to arrive. You make it to class with seconds to spare!")
    case 30...60:
        print("It took the bus \(busTime) to arrive. You are late to class, but you arrived, eager to learn.")
    default:
        print("It has taken over an hour (\(busTime)) for the bus to arrive, and you are late for class. Try again tomorrow.")
    }
} else if busPath == 2 {
    print("""
You decide to walk to the subway.
""")
}

if pathNum == 3 {
    print("""
You decide to walk to school. Along the way, you encounter a homeless man asking for .87 cents for gas so he can
get back home to his sick kids in New Jersey. What do you do?

1: Give him nothing, and keep walking
2: Give him a dollar, and ask for change
""")
}
let walkPath = Int(readLine() ?? "-1" ) ?? -1

if walkPath == 1 {
    print("""
Shrugging off the desperate plea of this sketchy guy, you continue to walk to class.
Looking over your shoulder you notice he is now following you. After several blocks with him
""")
} else if walkPath == 2 {
    print("""
After giving the sketchy man a dollar and asking for change, you both laugh hysterically and begin a nice conversation.
He tells his life story and you discover you have much in common. As he walked with you to class, you both decide to
to spend some time together and you skip class and meet his family. Arriving in New Jersey hours later, you expect to
meet his family when you enter his home. Hours later you wake up and discover your organs have been harvested.
""")
}

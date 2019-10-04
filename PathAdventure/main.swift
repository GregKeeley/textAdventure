//
//  main.swift
//  PathAdventure
//
//  Created by Gregory Keeley on 10/1/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

let commandSymbol = "\u{2318}" //Setting a symbol for use later

//======================================
// Setting up user Information in a tuple
//======================================

print("""
Congratulations on making it into the Pursuit program!
Your goal is to make it class on time today.
First, lets get to know each other.
""")
sleep(1)
print()
print("What is your name?")
var userName = (readLine())
print("What is your favorite breakfast food?")
var favBreakfast = (readLine())
print("Who is your favorite music artist?")
var favArtist = (readLine())

var userInfo = (name: userName,breakfast: favBreakfast,music: favArtist)

//================================================================================================
//===========Path Selection=======================================================================
//================================================================================================
sleep(1)

print("You are sound asleep when you hear your alarm ringing. Do you hit the snooze button, yes or no?")
var snoozePress:String = (readLine()?.lowercased() ?? " ")

// Snooze Choice

if snoozePress == ("yes") {
    for snoozePress in 1...3 {
        sleep(1);print("You pressed snooze \(snoozePress) times!")
    }
} else if snoozePress == ("no") {
    print("Great job \(userInfo.name!)! you didn't hit the snooze button! But you had a 3 course meal including \(userInfo.breakfast!) for breakfast that took way too long to make.")
}

// First Choice


sleep(1)
print("""


Running late for class now, you have 4 options to get to Pursuit.

1: Subway
2: Bus
3: Walk
4. Bicycle

Which do you choose?
""")
var pathNum = Int(readLine() ?? "-1") ?? -1
var firstChoice = pathNum // Trying to sort out while-loops

//================================================================================================
//===========Subway Path (pathNum1)==========================================================================
//================================================================================================

if pathNum == 1 {
    print("""

You walk 10 minutes to the subway, and swipe in. The local is about to arrive, and the express is not far behind.
Do you take the local or the express?

1: Local
2: Express
""")
    
    
    let subwayPath1 = Int(readLine() ?? "-1") ?? -1
    
    
    if subwayPath1 == 1 {
        print("""
            
            You get on the local train, and start listening to \(userInfo.music!) and cross your fingers the train will arrive on time.
            With seconds to spare, you run to the class, sweaty but on time. Congratulations! It is time to code.
            """)
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    } else if subwayPath1 == 2 {
        print("""

You wait for the express and watch the local leave the station. The train rolls in, you hop on and the doors close.
Halfway to the express stop, the train comes to a sudden halt. You hear an annoucement "Ladies and gentleman, due to
some unruly teenagers pulling the emergency brakes, we are cannot move until we fix the brakes. Sorry."
You are late to class after a 3 hour delay.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    
    //================================================================================================
    //===========Bus Path (pathNum2)=============================================================================
    //================================================================================================
    
    if pathNum == 2 {
        print("""

You walk 5 minutes to the bus, and see no bus in sight. You can wait, or you can continue walking to the subway.
Do you wait, or walk to the subway?

1: Wait
2: Walk to subway
""")
    }
    
    
    let busPath = Int(readLine() ?? "-1" ) ?? -1
    let busTime = Int.random(in: 1...70)
    
    if busPath == 1 {
        switch busTime {
        case 1...15:
            print("It took the bus \(busTime) minutes to arrive. You arrive in time to learn some coding!")
            print(" ")
            sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
        case 15...30:
            print("It took the bus \(busTime) minutes to arrive. You make it to class with seconds to spare!")
            print(" ")
            sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
        case 30...60:
            print("It took the bus \(busTime) minutes to arrive. You are late to class, but you arrived, eager to learn.")
            print(" ")
            sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
        default:
            print("It has taken (\(busTime)) minutes for the bus to arrive, and you are late for class.")
            print(" ")
            sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
        }
    } else if busPath == 2 {
        print("""

You decide to walk to the subway.You walk 10 minutes to the subway, and swipe in. The local is about to arrive, and the express is not far behind.
Do you take the local or the express?

1: Local
2: Express
""")
    }
    
    let subwayPath2 = Int(readLine() ?? "-1") ?? -1
    
    
    if subwayPath2 == 1 {
        print("""

You get on the local train, put on some music and cross your fingers the train will get you to pursuit on time.
With seconds to spare, you run to the class, sweaty but on time. Congratulations! It is time to code.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    } else if subwayPath2 == 2 {
        print("""

You wait for the express and watch the local leave the station. The train rolls in, you hop on and the doors close.
Halfway to the express stop, the train comes to a sudden halt. You hear an annoucement "Ladies and gentleman, due to
some unruly teenagers pulling the emergency brakes, we are cannot move until we fix the brakes. Sorry."
You are late to class after a 3 hour delay.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    
    
    //================================================================================================
    //===========Walk Path (pathNum3)============================================================================
    //================================================================================================
    
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
Looking over your shoulder you notice he is now following you.
After several blocks with him following you, you finally make it to Pursuit and
the protection of your fellows. As a group, you scare him off with your newly branded
programming skills, and you all enjoy a nice day of coding!
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    } else if walkPath == 2 {
        print("""

After giving the sketchy man a dollar and asking for change, you both laugh hysterically and begin a nice conversation.
He tells his life story and you discover you have much in common. As he walked with you to class, you both decide to
to spend some time together and you skip class and meet his family. Arriving in New Jersey hours later, you expect to
meet his family when you enter his home. Hours later you wake up and discover your organs have been harvested.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    
    //================================================================
    //===========Bike Path (pathNum4)============================================
    //================================================================
    
    if pathNum == 4 {
        print("""

You decided to ride your bike to Pursuit and get a little bit of excercise while you're at it!
Which route do you take?

1: Queens Boulevard
2: 47th Avenue

""")
    }
    
    //================Bike Path 1====================================================================================
    
    let bikePath = Int(readLine() ?? "-1") ?? -1
    
    
    let debrisChoice = Int(readLine() ?? "-1") ?? -1
    
    
    
    if bikePath == 1 {
        print("""

You get on your bike and starting pedaling towards Queens Blvd. Leisurely rolling towards Pursuit, you bypass
much of the traffic on your way. When you are only several blocks away, you notice at the last second, there
is debris in the road. Thinking quickly, you attempt to swerve around the debris. Do you go left or right?

1: to the left
2: to the right
"""
        )
    }
    if debrisChoice == 1 { // Left of the debris
        print("""

You quickly attempt to swerve to the left of the debris and somehow manage to avoid each screw, nail and splinter!
The rest of the ride goes smoothly, you chain up your bike, and enjoy a great day of coding at Pursuit!
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    if debrisChoice == 2 {
        print("""

You quick attempt to swerve to the right of the debris and somehow manage to avoid all of the dangerous garbage in your way!
But in your haste, you swerved into traffic and get clipped by a bus. You remain unharmed somehow, but your bike is ruined
and lays in pieces all of over Queens Blvd. Shook, you go home and stare into the mirror as you question your decision making skills.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    
    //================Bike path 2========================================================================================
    
    
    if bikePath == 2 {
        print("""

You get on your bike and starting pedaling towards Pursuit on 47th Ave. It's a relatively easy ride until you get within
a few blocks of Pursuit, when you get to the cement facility. With trucks loading up and lots of activity on both sides of the road
you can wait, or you can go around them. Do you wait or go around?

1: Wait
2: Go around
""")
    }
    
    let cementChoice = Int(readLine() ?? "-1") ?? -1
    
    
    if cementChoice == 1 {
        print("""

You decide to wait for the trucks to sort themselves out as they head out to whatever work site. After a few moments, there is a clear
path for you to continue and you roll through, unimpeded, making it to class on time. Time to code!
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    if cementChoice == 2 {
        print("""

You decide to try and go around the cement trucks, and in the confusion they never see you. Busy as they are, they continue their work
and through a weird Rube Goldberg like series of events, you somehow manage inside the mixing drum, full of wet cement. Unable to escape or
cry out for help, you end up being buried in the foundation of one the newest buildings in Queen Plaza. Discoverd centuries later by future
achreologists, along with your mangled bike.
""")
        print(" ")
        sleep(2);print("Press \(commandSymbol) + R to do this again tomorrow!")
    }
    
    //=================================================================
    // Bad choices
    //=================================================================
    
    if pathNum != 1 || 2 || 3 || 4 {
        print("ERROR")
    }
}

print("You made it to class on time to learn! If you are ready to start class, type ok")

var readyToLearn = readLine() ?? " "

repeat{
    print("Type Ready to learn to complete")
    readyToLearn = readLine()?.lowercased() ?? " "
    switch readyToLearn {
    case "ready to learn".lowercased():
print("Awesome! Make sure to study!")
        break
    default:
        print("You need to be ready to learn to complete...")
    }
} while readyToLearn != "Ready to learn".lowercased()

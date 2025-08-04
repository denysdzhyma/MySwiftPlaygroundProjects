import Foundation

var playerHealth = 100
var inventory: [String] = []
var hasFoundTreasure = false

func startStory() {
    print("You find yourself at the edge of a whispering, magical forest.")
    print("You see two paths.")
    print("-----------------------------------------------------------------")
    print("Path 1: A narrow, winding path covered in glowing moss.")
    print("Path 2: A wide, clear path that leads into the darker part of the woods.")
    print("\nWhich path do you choose? (Type '1' or '2' and press Enter)")
}

func undergroundCavern() {
    print("\nYou climb down a rickety ladder into a small, damp cavern.")
    print("In the center of the cavern, illuminated by a single beam of light, is a large treasure chest.")
    print("Another ladder leads further down into darkness.")
    print("-----------------------------------------------------------------")
    print("What do you do?")
    print("Choice A: Open the treasure chest.")
    print("Choice B: Climb the other ladder deeper underground.")
    print("\n(Type 'A' or 'B' and press Enter)")

    if let finalChoice = readLine() {
        if finalChoice.uppercased() == "A" {
            print("\nYou open the chest. It's filled with glittering gold and jewels!")
            print("✨ YOU HAVE FOUND THE LOST TREASURE OF THE FOREST! ✨")
            print("--- YOU WIN! ---")
            hasFoundTreasure = true
        } else if finalChoice.uppercased() == "B" {
            print("\nYou ignore the treasure and climb deeper into the darkness. Your adventure continues...")
        } else {
            print("\nInvalid choice. The cavern is silent.")
        }
    }
}

func hutInterior() {
    print("\nAfter catching your breath, you look around the dusty hut.")
    print("You notice a lumpy rug on the floor.")
    print("-----------------------------------------------------------------")
    print("What do you do?")
    print("Choice A: Look under the rug.")
    print("Choice B: Leave the hut immediately.")
    print("\n(Type 'A' or 'B' and press Enter)")

    if let rugChoice = readLine() {
        if rugChoice.uppercased() == "A" {
            print("\nYou pull back the rug, revealing a heavy wooden trapdoor with a rusty lock.")
            
            if inventory.contains("Rusty Key") {
                print("You use the Rusty Key. The lock clicks open!")
                
                undergroundCavern()
                
            } else {
                print("The lock is old and strong. You can't open it without a key.")
            }
            
        } else if rugChoice.uppercased() == "B" {
            print("\nYou decide you've had enough of this hut and leave.")
        } else {
            print("\nInvalid choice. The dust motes dance in the air.")
        }
    }
}

func darkPath() {
    print("\nYou walk down the wide path. The trees grow thicker, and a chill settles in the air.")
    print("Ahead, you see a small, dilapidated hut with a single, dark window.")
    print("The door is slightly ajar.")
    print("-----------------------------------------------------------------")
    print("What do you do?")
    print("Choice A: Push the door open and enter the hut.")
    print("Choice B: Ignore the hut and continue down the path.")
    print("\n(Type 'A' or 'B' and press Enter)")
    
    if let hutChoice = readLine() {
        if hutChoice.uppercased() == "A" {
            print("\nYou push the door open. A snarling wolf lunges from the shadows!")
            playerHealth -= 10
            print("You fight it off, but it scratched you. (Health: \(playerHealth))")
            print("On a dusty table, you spot a rusty key. You grab it.")
            inventory.append("Rusty Key")
            print("Your inventory now contains: \(inventory)")
            
            hutInterior()
            
        } else if hutChoice.uppercased() == "B" {
            print("\nYou decide the hut is too risky and continue down the path.")
            print("The forest grows even darker around you. You feel a sense of unease.")
            
        } else {
            print("\nInvalid choice. You hesitate, and a cold wind blows.")
        }
    }
}

startStory()

if let choice = readLine() {
    
    if choice == "1" {
        print("\nYou chose the mossy path. The air hums with quiet magic.")
    
    } else if choice == "2" {
        darkPath()
        
    } else {
        print("\nInvalid choice. The forest waits.")
    }
}

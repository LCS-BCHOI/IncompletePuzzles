//
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
import Foundation

print("Trident")
print("=======")

// INPUT
// Get tine length
print("Enter tine length:")
print("   ", terminator: "")
var tineLength = 0
while true{
    
    //Prompt the user
    print("Enter tine length:")
    
    //Collect input
    guard readLine() != nil else {
        continue
    }
   // Stop the loop
    break
}

// Get tine spacing
print("Enter tine spacing:")
print("   ", terminator: "")
let spacing = Int(readLine()!)!

// Get handle spacing
print("Enter handle length:")
print("   ", terminator: "")
let handle_length = Int(readLine()!)!

// OUTPUT
// Produce top of trident according to length given
for _ in 1...tineLength {
    // Print the tines
    for _ in 1...3 {
        
        // Print part of a tine
        print("*", terminator: "")
        
        // Print space between tines
        for _ in 1...spacing {
            print(" ", terminator: "")
        }
        
    }

    print("")
}

for _ in 1...(3 + spacing*2) {
    print("*", terminator: "")
}

print("")

for _ in 1...handle_length {
    for _ in 1...(1+spacing) {
        print(" ", terminator: "")
     }
    print("*")
}

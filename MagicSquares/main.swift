//
//  main.swift
//  MagicSquares
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/magic-squares.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
import Foundation

print("Magic Squares")
print("=============")

// INPUT
// Create an empty array to store each row of numbers
// NOTE: Each row will itself be an array, effectively creating a two-dimensional array.
var numbers: [[String]] = []
var ismagicsquare:Bool = false

// Ask for the first row of numbers
// NOTE: This is provided as a String

// Asking for user input really cool and interesting

for _ in 0...3{
    let line1 = readLine()!
    numbers.append(line1.components(separatedBy: " "))
}

// This would print hte row and stuff maakeing sure everthing works
// This is for the look of thing

for i in 0...3{
    var count:Int = 0
    for x in 0...3{
        count += Int(numbers[i][x]) ?? 0
    }
    if count != 34{
        ismagicsquare = false
    }
}

// This would make things look nice really cool and all
// This is the function of things.

for j in 0...3{
    var av:Int = 0
    
    for x in 0...3{
        av += Int(numbers[x][j]) ?? 0
    }
    
    if av != 34{
        ismagicsquare = false
    }
}

if ismagicsquare{
    print("Magic Square")
}else{
    print("Not Magic Square")
}

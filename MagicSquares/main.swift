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

// Ask for the first row of numbers
// NOTE: This is provided as a String
let line1 = readLine()!

// Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line1.components(separatedBy: " "))

// Ask for the second row of numbers
// NOTE: This is provided as a string
let line2 = readLine()!

// Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line2.components(separatedBy: " "))

// PROCESS & OUTPUT

// Print each row and column of the array
for (i, row) in numbers.enumerated() {
    for (j, column) in row.enumerated() {
        // NOTE: At this point, each value is still a string. What must you do prior to adding up the values? 🧐
        // HINT: Think data types.
        print("The value at row \(i) and column \(j) is: \(column)")
    }
}

// Print each row and column of the array, showing values in a formatted manner
// Iterate over the rows
for row in 0...numbers.count - 1 {

    // Print gap (a tab character) in top-left corner and headers for columns
    if row == 0 {
        print("\t", terminator: "")
        for column in 0...numbers[row].count - 1 {
            print("\(column)\t", terminator: "")
        }
        print("") // Go to next line
    }
    
    // Iterate over the columns
    for column in 0...numbers[row].count - 1 {
        
        // Print row header
        if column == 0 {
            print("\(row)\t", terminator: "")
        }
        
        // Print the actual number at this row and column
        print("\(numbers[row][column])\t", terminator: "")
        
    }
    
    // Now go to the next line
    print("")
    
}

//
//  main.swift
//  PigLatin
//

import Foundation

// INPUT
// Global variable, tracks how many words we can expect to have to translate to Pig Latin
var countOfExpectedWordsToTranslate = 3
var n = 0

while 1 == 1 {
    print("How many words will be provided?")
    let input = readLine()
    
    // Test 1 make sure not nil
    guard let givenInput = input else {
        continue
    }
    //Test 2 make sure it's integer
    guard let integerInput = Int(givenInput) else {
        continue
    }
    // Test 3 is it in right range
    if integerInput < 1 || integerInput > 10 {
        continue
    }
    countOfExpectedWordsToTranslate = integerInput
    break
}
// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the words to be translated
for counter in 1...countOfExpectedWordsToTranslate {
    
    // Ask user for the word to be translated
    print("Enter word #\(counter):")
    
    // Create a variable that has the translated word
    var wordBeforeVowels = ""
    var translatedWord = ""
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Replace this logic with the correct logic
    var countOfWordBeforeVowels = 0
    var countOfTotalLetter = 0
    for letters in givenInput {
        switch letters {
        case "A", "E", "I", "O", "U" :
            break
        default:
            wordBeforeVowels += String(letters)
            countOfWordBeforeVowels += 1
            
            for letters in givenInput {
                countOfTotalLetter += 1
                if countOfWordBeforeVowels < countOfTotalLetter {
                    translatedWord += String(letters)
                }
                else {
                    continue
                }
            }
            translatedWord += wordBeforeVowels
            translatedWord += "AY"
            print("In pig latin: \(translatedWord)")
            
        }
        
        
    }
}

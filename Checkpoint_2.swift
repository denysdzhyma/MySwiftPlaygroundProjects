//
//  Checkpoint_2.swift
//  Checkpoint_2
//
//  Created by Denys on 2025-12-05.
//

import Cocoa

// Arrays
let countries: [String] = [
    "United States of America",
    "Canada",
    "Mexico",
    "United Kindgom"].sorted()

let country_USA = countries[3]
let country_CAN = countries[0]

let question = "Which country borders Canada only by land?"
let answer = "- \(country_CAN) borders only the \(country_USA)."


// Sets
var passport_code: Set<String> = []
passport_code.insert("USA")
passport_code.insert("CAN")
passport_code.insert("MEX")
passport_code.insert("GBR")

let passport_codes_info = "A passport code contains \(passport_code.count) countries."


// Prints
print(question)
print(answer)
print (passport_codes_info)

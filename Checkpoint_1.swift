//
//  Checkpoint_1.swift
//  Checkpoint_1
//  
//  Created by Denys on 2025-12-03.
//

import Cocoa

// Checkpoint 1 - Converting temperatures

let temperatureC = 20
let temperatureF = 80

let convert_from_celsius_to_fahrenheit = (temperatureC * 9 / 5) + 32 // Celsius -> Fahrenheit
let convert_from_fahrenheit_to_celsius = (temperatureF - 32) * 5 / 9 // Fahrenheit -> Celsius

let fahrenheitConverted = "You entered \(temperatureF)ºF. Converted to Celsius: \(convert_from_fahrenheit_to_celsius)ºC."
let celsiusConverted = "You entered \(temperatureC)ºC. Converted to Fahrenheit: \(convert_from_celsius_to_fahrenheit)ºF."

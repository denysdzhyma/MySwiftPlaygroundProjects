//
//  main.swift
//  Checkpoint_3_FizzBuzz
//
//  Created by Denys on 2025-12-08.
//

import Cocoa

for i in 1...100 {
    
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
        continue
    }
    
    if i.isMultiple(of: 5) {
        print("Buzz")
        continue
    }
    
    if i.isMultiple(of: 3) {
        print("Fizz")
        continue
    }
    
    print(i)
}

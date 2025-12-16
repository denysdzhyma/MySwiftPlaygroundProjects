//
//  main.swift
//  Checkpoint_4_SquareRoot
//
//  Created by Denys on 2025-12-10.
//

import Cocoa

enum SquareRootErrors: Error {
    case outOfBounds
    case noRootFound
}

func squareRootFinder(_ number: Int) throws -> Int {
    if number <= 0 || number > 10_000 {
        throw SquareRootErrors.outOfBounds
    }
    
    for findSquareRoot in 1...10_000 {
        if findSquareRoot * findSquareRoot != number {
            continue
        } else {
            return findSquareRoot
        }
    }
    
    if 0 == 0 {
        throw SquareRootErrors.noRootFound
    }
}

// TESTING.
do {
    let result = try squareRootFinder(10000)
    print(result)
} catch SquareRootErrors.outOfBounds {
    print("Error! Out of Range.")
} catch SquareRootErrors.noRootFound {
    print("Error! No Root Found.")
} catch {
    print("Error! Unknown.")
}



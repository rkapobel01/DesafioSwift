//
//  StringExtended.swift
//  DesafioSwift
//
//  Created by Rodrigo Kapobel on 22/2/17.
//  Copyright © 2017 Rodrigo Kapobel. All rights reserved.
//

import UIKit

// MARK: Esta extensión cuenta con un método countInstances que cuenta apariciones de un valor en el String y devuelve la cantidad de las mismas.

extension String {
    func countInstances(of stringsToFind: String ...) -> Int {
        var stringToSearch = self
        var count = 0
        
        for string in stringsToFind {
            repeat {
                guard let foundRange = stringToSearch.range(of: string, options: .diacriticInsensitive)
                    else { break }
                stringToSearch = stringToSearch.replacingCharacters(in: foundRange, with: "")
                count += 1
                
            } while (true)
        }
        
        return count
    }
}

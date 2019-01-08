//
//  Meal.swift
//  Zeta
//
//  Created by Adam Rinehouse on 1/6/19.
//  Copyright © 2019 Adam Rinehouse. All rights reserved.
//

import UIKit
import os.log

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // rating must be between 0 and 5 inclusive
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}

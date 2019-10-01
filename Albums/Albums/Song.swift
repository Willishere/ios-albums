//
//  Song.swift
//  Albums
//
//  Created by William Chen on 9/30/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

struct Song {
    let name: String
    
    enum SongKey: String, CodingKey{
        case name
        
        enum TitleKey: String, CodingKey{
            case title
        
        
}
}
}

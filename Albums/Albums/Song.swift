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
    let duration: String
    let id: UUID
    
    enum SongKey: String, CodingKey{
        case name
        case duration
        case id
        
        enum TitleKey: String, CodingKey{
            case title
        }
        
        enum DurationKey: String, CodingKey {
            case duration
        }
    }
}

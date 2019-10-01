//
//  Song.swift
//  Albums
//
//  Created by William Chen on 9/30/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

struct Song: Codable {
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: SongKey.self)
        
        var titleContainer = try container.nestedUnkeyedContainer(forKey: .name)
        let titleContentContainer = try titleContainer.nestedContainer(keyedBy: SongKey.TitleKey.self)
        let titleName = try titleContentContainer.decode(String.self, forKey: .title)
        
        name = titleName
        
        var durationContainer = try container.nestedUnkeyedContainer(forKey: .duration)
        let durationContentContainer = try durationContainer.nestedContainer(keyedBy: SongKey.DurationKey.self)
        let durationTime = try durationContentContainer.decode(String.self, forKey: .duration)
        
        duration = durationTime
        
        id = try container.decode(UUID.self, forKey: .id)
        
        
    }
    
}

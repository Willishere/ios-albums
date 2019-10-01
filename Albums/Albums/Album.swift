//
//  Album.swift
//  Albums
//
//  Created by William Chen on 9/30/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation

struct Album: Codable {
    let name: String
    let artist: String
    let genres: [String]
    let coverArt: [URL]
    
    enum AlbumKeys: String, CodingKey {
        case name
        case artist
        case genres
        case coverArt
        
    }
    
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AlbumKeys.self)
        
        name = try container.decode(String.self, forKey: .name) ?? "Default Name"
        
        let artistString = try container.decode(String.self, forKey: .artist)
        artist = String(artistString) ?? "Default Artist"
        
    
        let genresContainer 
        
        
    }
}

//
//  Album.swift
//  Albums
//
//  Created by William Chen on 9/30/19.
//  Copyright © 2019 William Chen. All rights reserved.
//

import Foundation
import CoreData

struct Album: Codable {
    let name: String
    let artist: String
    let genres: [String]
    let coverArt: [URL]
    let songs: [Song]
    
    enum AlbumKeys: String, CodingKey {
        case name
        case artist
        case genres
        case coverArt
        case songs
    }
    
    init (from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AlbumKeys.self)
        
        name = try container.decode(String.self, forKey: .name) 
        
        let artistString = try container.decode(String.self, forKey: .artist)
        artist = String(artistString)
        
        
        var genresContainer = try container.nestedUnkeyedContainer(forKey: .genres)
        var genreNames: [String] = []
        while !genresContainer.isAtEnd {
            let genresContentContainer = try genresContainer.nestedContainer(keyedBy: AlbumKeys.self)
            
            var genreNameContainer = try genresContentContainer.nestedUnkeyedContainer(forKey: .genres)
            let genreName = try genreNameContainer.decode(String.self)
            genreNames.append(genreName)
        }
        
        genres = genreNames
        
        var coverArtContainer = try container.nestedUnkeyedContainer(forKey: .coverArt)
        var coverArtNames: [URL] = []
        while !coverArtContainer.isAtEnd {
            let coverArtContentContainer = try coverArtContainer.nestedContainer(keyedBy: AlbumKeys.self)
            
            var coverArtNameContainer = try coverArtContentContainer.nestedUnkeyedContainer(forKey: .coverArt)
            let coverArtName = try coverArtNameContainer.decode(URL.self)
            coverArtNames.append(coverArtName)
        }
        
        coverArt = coverArtNames
        
        var songContainer = try container.nestedUnkeyedContainer(forKey: .songs)
        var songNames: [Song] = []
        while !songContainer.isAtEnd {
            let songContentContainer = try songContainer.nestedContainer(keyedBy: AlbumKeys.self)
            var songNameContainer = try songContentContainer.nestedUnkeyedContainer(forKey: .songs)
            let songName = try songNameContainer.decode(Song.self)
            songNames.append(songName)
            
            
        }
        
        
    }
}

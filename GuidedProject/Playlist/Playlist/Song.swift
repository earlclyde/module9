//
//  Song.swift
//  Playlist
//
//  Created by Nathan on 5/11/16.
//  Copyright © 2016 Falcone Development. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    private let kTitle = "title"
    private let kArtist = "artist"
    
    let title: String
    let artist: String
    
    var dictionaryCopy: [String: AnyObject] {
        return[kTitle: title, kArtist: artist]
    }
    
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
    // ["title": "Ramble on" 
    init?(dictionary: [String: AnyObject]) {
        guard let title = dictionary[kTitle] as? String,
            artist = dictionary[kArtist] as? String else {
                return nil
        }
        self.title = title
        self.artist = artist

        }
    }

func ==(lhs: Song, rhs: Song) -> Bool {
    return lhs.title == rhs.title && lhs.artist == rhs.artist
}

let song = Song(title: "Alright", artist: "Kendrick Lamar")

//
//  Constants.swift
//  pixel-city
//
//  Created by Christopher Parr on 17/02/2019.
//  Copyright © 2019 Christopher Parr. All rights reserved.
//

import Foundation

let apiKey = "9f78cfaca1d578f672eb5ffb1fef2e40"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"

}

func flickrPhotoInfoUrl(forApiKey key: String, photoId: String, secret: String) -> String {
    
    return "https://api.flickr.com/services/rest/?method=flickr.photos.getInfo&api_key=\(apiKey)&photo_id=\(photoId)&secret=\(secret)&format=json&nojsoncallback=1"
    
}

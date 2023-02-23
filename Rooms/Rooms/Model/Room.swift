//
//  Room.swift
//  Rooms
//
//  Created by Kate Jang on 11/27/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Room: Hashable, Codable, Identifiable {
    var id: Int
    var room: String
    var fullName: String
    var building: String
    var date: String
    var profession: String
    var floor: String
    var blurb: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    private var longitude: Double
    private var latitude: Double
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: latitude,
            longitude: longitude)
    }
}

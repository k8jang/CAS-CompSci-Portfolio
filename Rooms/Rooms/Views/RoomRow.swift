//
//  RoomRow.swift
//  Rooms
//
//  Created by Kate Jang on 11/27/22.
//

import SwiftUI

struct RoomRow: View {
    var room: Room
    
    var body: some View {
        HStack {
            room.image
                .resizable()
                .frame(width:50, height: 50)
            Text(room.fullName)
            
        }
    }
}

struct RoomRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            RoomRow(room: rooms[0])
            RoomRow(room: rooms[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

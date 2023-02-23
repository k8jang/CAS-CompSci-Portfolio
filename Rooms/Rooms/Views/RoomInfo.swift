//
//  RoomInfo.swift
//  Rooms
//
//  Created by Kate Jang on 11/28/22.
//

import SwiftUI

struct RoomInfo: View {
    var room: Room
    
    var body: some View {
        ScrollView{
            VStack {
                Text("\(room.fullName)")
                    .font(.title)
                HStack {
                    Text("Floor: \(room.floor)")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding()
                
                Divider()
                Text("Profession: \(room.profession)")
                    .font(.title2)
                Text("\(room.blurb)")
                    .padding()
                
                }
        }
    }
}

struct RoomInfo_Previews: PreviewProvider {
    static var previews: some View {
        RoomInfo(room: rooms[0])
    }
}

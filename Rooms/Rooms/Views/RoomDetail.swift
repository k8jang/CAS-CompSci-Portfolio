//
//  RoomDetail.swift
//  Rooms
//
//  Created by Kate Jang on 11/27/22.
//

import SwiftUI

struct RoomDetail: View {
    var room: Room
    
    var body: some View {
        ScrollView{
            MapView(coordinate: room.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: room.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack {
                Text("\(room.room)")
                    .font(.title)
                HStack {
                    Text("\(room.building)")
                        .font(.subheadline)
                    Text("\(room.floor)")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding()
                
                Divider()
                    .padding()
                
                }
        }
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetail(room: rooms[0])
    }
}

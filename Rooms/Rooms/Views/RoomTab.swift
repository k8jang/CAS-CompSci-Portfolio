//
//  RoomTab.swift
//  Rooms
//
//  Created by Kate Jang on 11/28/22.
//

import SwiftUI

struct RoomTab: View {
    var room: Room
    
    var body: some View {
        TabView{
            RoomDetail(room: room)
                .tabItem{
                    Image(systemName:"house")
                    Text("Location")
                }
            RoomInfo(room: room)
                .tabItem{
                    Image(systemName:"person")
                    Text("About")
                }
        }
    }
}

struct RoomTab_Previews: PreviewProvider {
    static var previews: some View {
        RoomTab(room: rooms[0])
    }
}

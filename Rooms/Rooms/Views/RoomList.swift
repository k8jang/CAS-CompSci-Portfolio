//
//  RoomList.swift
//  Rooms
//
//  Created by Kate Jang on 11/27/22.
//

import SwiftUI

struct RoomList: View {
    var body: some View {
        NavigationView{
            List(rooms){room in
                NavigationLink{
                    RoomTab(room: room)
                } label: {
                    RoomRow(room: room)
                }
            }
            .navigationTitle("XRDS Rooms")
        }
    }
    
    
    struct RoomList_Previews: PreviewProvider {
        static var previews: some View {
            RoomList()
        }
    }
}

//
//  Image.swift
//  Rooms
//
//  Created by Kate Jang on 11/27/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300.0, height: 350.0)
            .clipShape(Circle())
            .overlay{Circle().stroke(.gray, lineWidth: 4)
//            .aspectRatio(contentMode: .fit)
            
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("archimedes"))
    }
}

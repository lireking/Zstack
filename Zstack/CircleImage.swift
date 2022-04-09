//
//  CircleImage.swift
//  Zstack
//
//  Created by OakHost Customer on 10/03/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("auto")
            .clipShape(Circle())
            .overlay {
                            Circle().stroke(.white, lineWidth: 4)
                        }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

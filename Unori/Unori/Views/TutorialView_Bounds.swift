//
//  TutorialView+Bounds.swift
//  Unori
//
//  Created by Fabio Barbato on 07/03/23.
//

import SwiftUI

struct TutorialView_Bounds: View {
    var body: some View {
            GeometryReader{ reader in
                TutorialView()
                    .position(x: reader.size.width/2, y:reader.size.height/2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color("AccentColor"), lineWidth: 3)
                            
                    )
            }
        }
    }


struct TutorialView_Bounds_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView_Bounds()
    }
}

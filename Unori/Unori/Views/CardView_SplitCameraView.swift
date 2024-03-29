//
//  CardView_SplitCameraView.swift
//  Unori
//
//  Created by Fabio Barbato on 07/03/23.
//

import SwiftUI

struct CardView_SplitCameraView: View {
    var chosenWord: ListItem
    @State var isNormalSpeed = true
    @State var text : LocalizedStringKey = "1x\n Normal"
    var body: some View {
        HStack{
            VStack {
                CardTemplate(word: chosenWord)
                    .padding()
                Spacer()
                Button {
                    if(isNormalSpeed){
                        text = "0.5x\n Slow"
                        isNormalSpeed = false
                        player.play()
                        player.rate = 0.5
                    }
                    else{
                        text = "1x\n Normal"
                        isNormalSpeed = true
                        player.play()
                        player.rate = 1
                        
                    }
                } label: {
                    Text(text)
                        .padding(30)
                        .foregroundColor(Color("AccentColor"))
                        .background(
                            RoundedRectangle(
                                cornerRadius: 40,
                                style: .continuous)
                            .stroke(Color("AccentColor"), lineWidth: 2)

                        )
                        .shadow(radius: 40)
                }
                Spacer()
                Spacer()
            }

            SplitCameraView()
            
        }
    }
}

struct CardView_SplitCameraView_Previews: PreviewProvider {
    static var previews: some View {
        CardView_SplitCameraView(chosenWord: ListItem(name: NSLocalizedString("Placeholder", comment: ""), icon: "farfalla"))
    }
}

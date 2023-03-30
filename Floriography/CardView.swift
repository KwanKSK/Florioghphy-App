//
//  CardView.swift
//  Floriography
//
//  Created by kwanhathai on 29/5/2565 BE.
//  Copyright © 2565 BE Kwanhathai. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var flower: Flower
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(flower.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(flower.tag)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .lineSpacing(5)
                    .lineLimit(4)
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: screen.bounds.width * 0.75)
                    .background(Color.black.opacity(0.5))
            }
            .frame(width:	 screen.bounds.width * 0.75, height: screen.bounds.height * 0.60)
            .cornerRadius(16)
            .shadow(radius: 8)
            
            Text(flower.name)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(Color.black)
        }
    }
}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(flower: Flower.stubbed[0])
    }
}


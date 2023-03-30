//
//  SectionCarousel.swift
//  Floriography
//
//  Created by kwanhathai on 29/5/2565 BE.
//

import SwiftUI

struct SectionCarousel: View {
    
    let section: FlowerSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(section.name)
                .font(.system(size: 20, weight: .regular))
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(section.picturesImageName, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal)
            }
        }
        .padding(.bottom)
    }
}


struct SectionCarousel_Previews: PreviewProvider {
    static var previews: some View {
        SectionCarousel(section: Flower.stubbed[0].sections![0])
    }
}

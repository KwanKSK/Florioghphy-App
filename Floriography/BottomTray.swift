//
//  BottomTray.swift
//  Floriography
//
//  Created by kwanhathai on 29/5/2565 BE.
//  Copyright © 2565 BE Kwanhathai. All rights reserved.
//

import SwiftUI

struct BottomTray: View {
    
    var selectedFlower: Flower?
    var isScrollDisabled: Bool = true
    
    var body: some View {
        ZStack {
            if self.selectedFlower != nil {
                VStack(spacing: 0) {
                    Rectangle().fill(Color(red: 240/255, green: 20/255, blue: 100/255).opacity(0.4))
                        .frame(width: 40, height: 4)
                        .cornerRadius(4)
                    
                    Text(self.selectedFlower?.name ?? "")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.vertical)
                    Text(self.selectedFlower?.meaning ?? "")
                        .italic().padding(.bottom)
                    
                    Divider().background(Color(red: 240/255, green: 20/255, blue: 100/255).opacity(0.4)).padding()
                    
                    ScrollView(showsIndicators: false) {
                        Text("Meaning tag").bold()
                        Text(self.selectedFlower?.tag ?? "").padding()
                        
                        Text("Origin").bold()
                        Text(self.selectedFlower?.origin ?? "").padding()
                        
                        Text("Pair with...").bold()
                        Text(self.selectedFlower?.pairWith ?? "").padding()
                    }
                    .disabled(self.isScrollDisabled)
                }
                .multilineTextAlignment(.leading)
            }
        }
        .background(Color.white)
        .foregroundColor(Color.black)
    }
}

struct BottomTray_Previews: PreviewProvider {
    static var previews: some View {
        BottomTray(selectedFlower: Flower.stubbed.first, isScrollDisabled: false)
    }
}

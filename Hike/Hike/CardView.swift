//
//  CardView.swift
//  Hike
//
//  Created by Deepak kumar Dash on 01/03/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                VStack (alignment: .leading) {
                    Text("Hiking")
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGrayLight,
                                    .customGrayMedium
                                ], startPoint: .top, endPoint: .bottom)
                    )
                    Text("Fun and enjoyable outdoor activities for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, 
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}

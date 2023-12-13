//
//  ImageCarousel.swift
//  Rexix
//
//  Created by Apple on 12/12/2023.
//

import SwiftUI

struct ImageCarousel: View {
    var images: [String] = ["15profront", "15proback", "15proleft", "15proright","15proangled", "15proangled2", "15protop", "15probottom"]
    @State private var selectedImageIndex: Int = 0
    
    var body: some View {
        ZStack {
            
            // Step 5: Create TabView for Carousel
            TabView(selection: $selectedImageIndex) {
                // Step 6: Iterate Through Images
                ForEach(0..<images.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        // Step 7: Display Image
                        Image("\(images[index])")
                            .resizable()
                            .tag(index)
                            .aspectRatio(1.6, contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width)
                            //.cornerRadius(10)
                            .clipped()
                    }
                    //.background(VisualEffectBlur()) // Step 8: Apply Visual Effect Blur
                    .shadow(radius: 20) // Step 9: Apply Shadow
                }
            }
            .frame(height: 300)
            //.cornerRadius(10)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Step 11: Customize TabView Style
            .ignoresSafeArea()
            
            // Step 12: Navigation Dots
            HStack {
                ForEach(0..<images.count, id: \.self) { index in
                    // Step 13: Create Navigation Dots
                    Circle()
                        .fill(Color.secondary.opacity(selectedImageIndex == index ? 1 : 0.33))
                        .frame(width: 6, height: 6)
                        .onTapGesture {
                            // Step 14: Handle Navigation Dot Taps
                            selectedImageIndex = index
                        }
                }
                .offset(y: 170) // Step 15: Adjust Dots Position
            }
        }
//        .onReceive(timer) { _ in
//            // Step 16: Auto-Scrolling Logic
//            withAnimation(.default) {
//                selectedImageIndex = (selectedImageIndex + 1) % images.count
//            }
//        }
    }
}


struct ImageCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ImageCarousel()
    }
}

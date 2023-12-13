//
//  customProgressBar.swift
//  Rexix
//
//  Created by Apple on 08/11/2023.
//

import SwiftUI

struct customProgressBar: View {
    var progress: Double = 0.0
    var rating: Double = 0.0
    init(progress rating: Double){
        self.rating = rating
        self.progress = rating / 5
    }
    var body: some View {
      
        ZStack {
            Circle()
                .trim(from: CGFloat(progress), to: 1)
                .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                .rotationEffect(.degrees(-90))
            Text(String(format: "%.1f", rating))
                .foregroundColor(Color.green)
                .font(.title3)

            Circle()
                .trim(from: 0, to: CGFloat(progress))
                .stroke(Color.green, lineWidth: 10)
                .rotationEffect(.degrees(-90))
        }
        .frame(width: 50, height: 50) // Set the size of the progress view
    }
    
}

struct customProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        customProgressBar(progress: 4.5)
    }
}

//
//  DishItemView.swift
//  FoodOrdering
//
//  Created by Mingxin Xie on 7/1/24.
//

import SwiftUI

// The FoodItem view represents a visual component displaying information about a specific dish.
struct DishItemView: View {
    
    // Model representing the dish to be displayed.
    let dish: Dish
    
    var body: some View {
        HStack {
            // VStack to stack text elements vertically.
            VStack {
                // Dish title
                Text(dish.title ?? "")
                    .frame(maxWidth: 330, alignment: .leading)
                    .font(.custom("Karla-Bold", size: 20))
                    .foregroundColor(.black)
                
                Spacer(minLength: 10)
                
                // Dish description
                Text(dish.details ?? "")
                    .frame(maxWidth: 330, alignment: .leading)
                    .font(.custom("Karla-Bold", size: 16))
                    .lineLimit(3)
                
                Spacer(minLength: 5)
                
                // Dish price
                Text("$" + (dish.price ?? ""))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .monospaced()
            }
            
            // Asynchronously loads and displays the image for the dish.
            AsyncImage(url: URL(string: dish.image ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(maxWidth: 90, maxHeight: 90)
            .clipShape(Rectangle())
        }
        .padding(.vertical)  // Adds vertical padding.
        .frame(maxHeight: 150)  // Sets a maximum height for the HStack.
    }
}


#Preview {
    DishItemView(dish: PersistenceController.oneDish())
}

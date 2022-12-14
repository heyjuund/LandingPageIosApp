//
//  SheetsView.swift
//  TravelApp
//
//  Created by Jundan Harish on 14/12/22.
//

import SwiftUI

struct SheetsView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODIES
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center) {
                Text("Pink Beach, Flores")
                    .font(.system(size: 25, design: .rounded))
                    .fontWeight(.bold)
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .fontWeight(.bold)
                    
                    Text("4.8")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                } //HStack
            } //HStack
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    CategoryIconView(icon: "figure.walk.motion", title: "Walk", color: .green)
                    CategoryIconView(icon: "fork.knife.circle.fill", title: "Food", color: .orange)
                    CategoryIconView(icon: "house.fill", title: "Stays", color: .blue)
                    CategoryIconView(icon: "sailboat.fill", title: "Ride", color: .purple)
                    CategoryIconView(icon: "figure.walk.motion", title: "Walk", color: .green)
                    CategoryIconView(icon: "fork.knife.circle.fill", title: "Food", color: .orange)
                    CategoryIconView(icon: "house.fill", title: "Stays", color: .blue)
                    CategoryIconView(icon: "sailboat.fill", title: "Ride", color: .purple)
                } //HStack
                .padding(.vertical)
            } //ScrollView
            
            VStack(alignment: .leading) {
                Text("About Destination")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .padding(.vertical,3)
                Text("Pink Beach, or Pantai Merah, as it aptly named, is one of seven pink beachs on the planet.   This was awesome.")
                   
            } //VStack
            
            HStack(alignment: .center) {
                Text("$81,39")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Link(destination: URL(string: "https://www.apple.com")!) {
                    HStack{
                        Image(systemName: "bag")
                            .font(.title2)
                        Text("Join Tour")
                            .font(.title2)
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding()
                    .background(
                        LinearGradient(colors: [Color.purple, Color.indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .cornerRadius(40)
                    .shadow(color: .gray, radius: 15, x: 5, y: 5)
                } //Link
            } //HStack
            .padding(.top)
        } //VStack
        .padding()
    }
}

// MARK: - PREVIEW
struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
    }
}

// MARK: - SUBVIEW
struct CategoryIconView: View {
    var icon: String
    var title: String
    var color: Color
    
    var body: some View{
            VStack(alignment: .center, spacing: 10) {
                Image(systemName: icon)
                    .font(.system(.title))
                    .foregroundColor(color)
                
                Text(title)
                    .font(.system(.title3))
            } //VStack)
            .frame(width: 75, height: 100)
//            .padding()
            .background(Color(.systemGray6))
            
    }
}

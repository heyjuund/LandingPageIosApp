//
//  TravelAppView.swift
//  TravelApp
//
//  Created by Jundan Harish on 24/11/22.
//

import SwiftUI

struct TravelAppView: View {
    // MARK: - PROPERTIES
    @State private var isShowing: Bool = false
    @State private var isShowingSheet: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("go-to-beach")
                .resizable()
                .ignoresSafeArea()
                .overlay {
                    Color.black
                        .opacity(0.5)
                        .ignoresSafeArea()
                }
            VStack {
                headerView
                

                VStack(alignment: .leading, spacing: 20) {
                    titleView(titleLine1: "Start Your Adventure and", titleLine2: "Go Travel")

                    
                    Text("Discover local destination beauty with Bluesky and travel with pride.")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)

                        .multilineTextAlignment(.leading)
                } // VStack
                .padding(30)
                Spacer()
            } // VStack
        } // ZStack
    }
}
// MARK: - PREVIEW
struct TravelAppView_Previews: PreviewProvider {
    static var previews: some View {
        TravelAppView()
    }
}

// MARK: - SUBVIEW
struct titleView : View {
    var titleLine1: String
    var titleLine2: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleLine1)
                .font(.system(size: 55, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)

            Text(titleLine2)
                .font(.system(size: 55, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        } //VStack
    }
}

// MARK: - EXTENSION
extension TravelAppView {
    private var headerView: some View {
        HStack(alignment: .center, spacing: 100) {
            Button {
                isShowing = true
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 35)
                        .foregroundColor(.black)
                        .opacity(0.2)
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .foregroundColor(.white)
                } // ZStack
            } //Button
            
            Text("Travel")
                .font(.system(size: 20, design: .rounded))
                .foregroundColor(.white)
            
            ZStack {
                Circle()
                    .frame(width: 35)
                    .foregroundColor(.black)
                    .opacity(0.2)
                Image(systemName: "cart.badge.plus")
                    .renderingMode(.original)
                    .foregroundColor(.white)
            } //ZStack
            .onTapGesture {
                isShowingSheet.toggle()
            }
            .sheet(isPresented: $isShowingSheet) {
                SheetsView()
                    .presentationDetents([.medium, .height(375)])
                    .presentationDragIndicator(.visible)
            }
        } //HStack
        .alert("Not yet available", isPresented: $isShowing) {
            Button {} label: {
                Text("Ok")
            }
        } message: {
            Text("Currently on active development")
        }
    }
}


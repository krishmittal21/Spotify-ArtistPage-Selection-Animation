//
//  ContentView.swift
//  Spotify-artistpage
//
//  Created by Krish Mittal on 04/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption = "Music"
    @Namespace private var namespace
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomLeading) {
                Image("Krish")
                    .resizable()
                    .ignoresSafeArea(edges: .all)
                    .frame(height: 300)
                
                Text("Krish Mittal")
                    .bold()
                    .font(.system(.title, design: .rounded))
                    .foregroundStyle(.white)
                    .padding()
            }
            
            Text("60M monthly listeners")
                .font(.system(.subheadline, design: .rounded))
                .padding(.top,10)
            
            HStack(spacing: 20) {
                ZStack(alignment: .bottom) {
                    Text("Music")
                        .padding(.bottom,10)
                        .foregroundStyle(.white)
                        .frame(minWidth: 50)
                    if selectedOption == "Music" {
                        RoundedRectangle(cornerRadius: 25.0)
                            .matchedGeometryEffect(id: "Rectangle", in: namespace)
                            .frame(width: 50, height: 2)
                            .foregroundStyle(.green)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedOption = "Music"
                    }
                }
                
                ZStack(alignment: .bottom) {
                    Text("Clips")
                        .padding(.bottom,10)
                        .foregroundStyle(.white)
                        .frame(minWidth: 50)
                    if selectedOption == "Clips" {
                        RoundedRectangle(cornerRadius: 25.0)
                            .matchedGeometryEffect(id: "Rectangle", in: namespace)
                            .frame(width: 50, height: 2)
                            .foregroundStyle(.green)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedOption = "Clips"
                    }
                }
                
                ZStack(alignment: .bottom) {
                    Text("Events")
                        .padding(.bottom,10)
                        .foregroundStyle(.white)
                        .frame(minWidth: 50)
                    if selectedOption == "Events" {
                        RoundedRectangle(cornerRadius: 25.0)
                            .matchedGeometryEffect(id: "Rectangle", in: namespace)
                            .frame(width: 50, height: 2)
                            .foregroundStyle(.green)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedOption = "Events"
                    }
                }
            }
            .padding(.top, 10)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

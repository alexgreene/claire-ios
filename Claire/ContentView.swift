//
//  ContentView.swift
//  Claire
//
//  Created by Alex Greene on 7/7/20.
//

import SwiftUI

struct ContentView: View {
    @State var size: CGSize = .zero
    @State var jobs: [String] = ["Software Engineer", "Optician", "Real Estate Developer"]
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                HStack(spacing: 0) {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            VStack {
                                Spacer()
                                Divider().padding(.bottom, 20)
                                Image(systemName: "hand.thumbsdown").padding(.bottom, 30)
                            }.foregroundColor(.black).font(.largeTitle)
                            Spacer()
                        }.background(Color.blue.opacity(0.2))
                    }
                    Divider()
                    Button(action: {
                        
                    }) {
                        HStack {
                            Spacer()
                            VStack {
                                Spacer()
                                Divider().padding(.bottom, 20)
                                Image(systemName: "hand.thumbsup").padding(.bottom, 30)
                            }.foregroundColor(.white).font(.largeTitle)
                            Spacer()
                        }.background(Color.green.opacity(0.7))
                    }
                }
                
                //Lets have the profile images on top of each other using ZStack
                ZStack {
                    VStack {
                        Text("How interesting does this job sound?").padding()
                        Text("Software Engineer").bold().padding()
                    }
                    .frame(width: 300, height: 150)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 1)
                    )
                    .rotationEffect(.degrees(-5)).shadow(radius: 5)
                    .gesture(DragGesture().onChanged({ (value) in
                        self.size = value.translation
                    }).onEnded({ (value) in
                        self.size = .zero
                    })).offset(self.size)
                }.animation(.spring())
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


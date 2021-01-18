//
//  ContentView.swift
//  Landmarks
//
//  Created by yabby on 2021/01/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)         //이미지를 위로올리고 패딩을 음수로줘서 땅긴다.
            VStack(alignment: .leading){
                Text("Turtle Rock")             //modifiers
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            Spacer()                            //padding을 통해 위로정렬
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}

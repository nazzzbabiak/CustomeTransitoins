//
//  ContentView.swift
//  CustomeTransitoins
//
//  Created by Nazar Babyak on 30.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapped = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !tapped {
                VStack(alignment: .leading) {
                    
                    Text("Hello Everyone!")
                        .padding()
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .matchedGeometryEffect(id: "title", in: namespace)
                    Text("Відео про кастомні transition.")
                        .padding()
                        .font(.system(size: 25, weight: .light, design: .monospaced))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Сьогодні ми вивчаємо як робити переходи. Geometry Effect.")
                        .padding()
                        .font(.system(size: 25, weight: .medium, design: .monospaced))
                        .matchedGeometryEffect(id: "description", in: namespace)
                    
                }
                
                .frame(width: 300, height: .infinity)
                .background(Color(.systemOrange))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel), radius: 5, x: 5, y: 2)
                .matchedGeometryEffect(id: "card", in: namespace)
                
            } else {
                VStack(alignment: .leading) {
                    
                    Text("Hello Everyone!")
                        .padding()
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .matchedGeometryEffect(id: "title", in: namespace)
                    Text("Відео про кастомні transition.")
                        .padding()
                        .font(.system(size: 25, weight: .light, design: .monospaced))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Сьогодні ми вивчаємо як робити переходи. Geometry Effect.")
                        .padding()
                        .font(.system(size: 25, weight: .medium, design: .monospaced))
                        .matchedGeometryEffect(id: "description", in: namespace)
                    
                    Spacer()
                }
                
                .frame(width: 350, height: .infinity ,alignment: .leading)
                .background(Color(.systemCyan))
                .cornerRadius(20)
                .shadow(color: Color(.secondaryLabel), radius: 5, x: 5, y: 2)
                .matchedGeometryEffect(id: "card", in: namespace)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                tapped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

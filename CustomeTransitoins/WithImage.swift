//
//  WithImage.swift
//  CustomeTransitoins
//
//  Created by Nazar Babyak on 30.03.2022.
//

import SwiftUI

struct WithImage: View {
    
    @State var gg = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !gg  {
                //tapped
                ViewOne()
            } else {
                //tapped
                ViewTwo()
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                gg.toggle()
            }
        }
    }
}

struct WithImage_Previews: PreviewProvider {
    static var previews: some View {
        WithImage()
    }
}

struct ViewOne: View {
    
    @Namespace var namespace
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("photo")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 300)
                .cornerRadius(15)
                .padding(.trailing, 150)
                .matchedGeometryEffect(id: "image", in: namespace)
            Spacer()
        }
    }
}

struct ViewTwo: View {
    
    @Namespace var namespace
    
    var body: some View {
        VStack {
            Image("photo")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width / 1.1 ,height: UIScreen.main.bounds.height / 1.6)
                .cornerRadius(15)
                .matchedGeometryEffect(id: "image", in: namespace)
        }
    }
}

//
//  JJabFlex.swift
//  SwiftUI_Subject_Project
//
//  Created by 염성필 on 2023/11/16.
//

import SwiftUI

struct JJabFlex: View {
    var body: some View {
        let headerList = ["몰아보기 추천! SF & 판타지 시리즈", "초자연 현상을 다룬 한국 시리즈", "흥미진진한 한국 드라마", "웹소설 원작 애니 시리즈"]
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 50) {
                ForEach(headerList, id: \.self) { item in
                        HorizantalView(headerText: item)
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
            }
        }
    }


struct HorizantalView : View {
    let headerText: String
    var body: some View {
        
            VStack(alignment: .leading, spacing: 5) {
                Text(headerText)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AsyncView(width: 100, height: 150)
                        AsyncView(width: 100, height: 150)
                        AsyncView(width: 100, height: 150)
                        AsyncView(width: 100, height: 150)
                        AsyncView(width: 100, height: 150)
                        AsyncView(width: 100, height: 150)
                    }
                }
            }
        
    }
}

struct JJabFlex_Previews: PreviewProvider {
    static var previews: some View {
        JJabFlex()
    }
}

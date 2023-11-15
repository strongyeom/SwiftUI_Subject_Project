//
//  AppStoreAppPart.swift
//  SwiftUI_Subject_Project
//
//  Created by 염성필 on 2023/11/16.
//

import SwiftUI

struct AppStoreAppPart: View {
    let header = ["지금 주목해야 할 앱", "추천 이벤트"]
    var body: some View {
        ScrollView(.vertical) {
            ForEach(header, id: \.self) { item in
                VStack {
                    Text(item)
                    PopularApp()
                }
            }
            .padding()
        }
    }
}

struct PopularApp: View {
    let data = ["네이버 웍스 - NAVER WORKS(NEWS)", "Pic픽스 아트 AI사진", "EPIK - AI 사진 편집",
                "네이버 웍스 - NAVER WORKS(NEWS)", "Pic픽스 아트 AI사진", "EPIK - AI 사진 편집",
                "네이버 웍스 - NAVER WORKS(NEWS)", "Pic픽스 아트 AI사진", "EPIK - AI 사진 편집"]

    var body: some View {
        
        ScrollView(.horizontal) {
            VStack {
                HStack {
            ForEach(data, id: \.self) { item in
                    
                        AsyncView(width: 100, height: 100)
                        VStack(alignment: .leading) {
                            Text(item)
                                .font(.title)
                                .bold()
                                .foregroundColor(.green)
                            Text(item)
                                .font(.callout)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
    }
}


struct AppStoreAppPart_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreAppPart()
    }
}

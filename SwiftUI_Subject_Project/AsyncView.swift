//
//  AsyncView.swift
//  SwiftUI_Subject_Project
//
//  Created by 염성필 on 2023/11/16.
//

import SwiftUI

struct AsyncView: View {
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        let url = URL(string: "https://picsum.photos/200")
            AsyncImage(url: url) { image in
                switch image {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .frame(width: width, height: height)
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                case .failure(_):
                    Image(systemName: "flase")
                @unknown default:
                    Image(systemName: "flase")
                }
            }
      
    }
}

struct AsyncView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncView(width: 100, height: 150)
    }
}

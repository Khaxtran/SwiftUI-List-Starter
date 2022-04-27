//
//  DetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Kha Tran on 27/4/2022.
//

import SwiftUI

struct DetailView: View {
    var video: Video
    
    var body: some View {
        VStack {
            VStack {
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                Text(video.title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .padding(2)
            }
            
            
            HStack(spacing: 45) {
                HStack {
                    Image(systemName: "eye.fill")
                    Text("\(video.viewCount)")
                }
                Text(video.uploadDate)
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Text(video.description)
                .padding(.vertical)
                .multilineTextAlignment(.leading)
                .font(.body)
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch now")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(video: VideoList.topTen.first!)
    }
}

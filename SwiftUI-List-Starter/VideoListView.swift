//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Sean Allen on 4/23/21.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: DetailView(video: video)) {
                        VideoCell(video: video)
                    }
            }
            .navigationTitle("Sean's top 10")
            .listStyle(.grouped)
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}

struct VideoCell: View {
    var video: Video
    
    var body: some View {
        HStack(alignment: .top) {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(5)
                .padding(.bottom, 10)
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

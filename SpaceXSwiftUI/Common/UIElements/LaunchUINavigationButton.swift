//
//  LaunchUINavigationButton.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 17/10/2020.
//

import SwiftUI
import SDWebImageSwiftUI

struct LaunchUINavigationButton: View {
    var launch: Launch
    
    var body: some View {
        VStack {
            WebImage(url: URL(string: launch.links.patch.small ?? ""))
                .resizable()
                .renderingMode(.original)
                .transition(.fade(duration: 0.3))
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(launch.name)
            Spacer()
        }
    }
}

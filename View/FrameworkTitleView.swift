//
//  FrameworkTitleView.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/20/21.
//

import SwiftUI


struct FrameworkTitleView: View {
    
    let framework: Framework
    
    var body: some View {
        
        VStack {
            Image(framework.imageName ?? "")
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name ?? "")
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

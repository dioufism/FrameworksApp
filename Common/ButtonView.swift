//
//  ButtonVIew.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/12/21.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    
    var body: some View {
        
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}



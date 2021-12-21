//
//  FrameworkDetail View.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/12/21.
//

import SwiftUI

struct FrameworkDetailView: View {
    // @Environment(\.presentationMode) private var presentaionMode
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView =  false
    
    var framework: Framework
    
    var body: some View {
        ScrollView {
            VStack {
                XdismissButton(isShowingDetailView: $isShowingDetailView)
                    .padding()
                
                Spacer()
                
                FrameworkTitleView(framework: framework)
                
                Text(framework.description ?? "")
                    .font(.body)
                    .padding()
                
                Spacer()
                
                Button {
                    isShowingSafariView =  true
                    
                } label: {
                    ButtonView(title: "Learn More")
                }
                .sheet(isPresented: $isShowingSafariView) {
                    SafariView(url: URL(string: framework.urlString!) ?? URL(string: "www.apple.com")!)
                }
            }
            
        }
        
    }
}


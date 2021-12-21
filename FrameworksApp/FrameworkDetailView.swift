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
                HStack {
                    Spacer()
                    Button {
                        //presentaionMode.wrappedValue.dismiss()
                        isShowingDetailView =  false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                }
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


//
//  FrameworkGridView.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/11/21.
//

import SwiftUI


struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [ GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWork = framework
                            }
                    }
                }
                .navigationTitle("Frameworks")
                .navigationBarTitleDisplayMode(.large)
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFrameWork ?? MockData.sampleFramework)
                }
            }
        }
    }
}

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

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

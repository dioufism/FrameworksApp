//
//  FrameworkGridView.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/11/21.
//

import SwiftUI


struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
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



struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

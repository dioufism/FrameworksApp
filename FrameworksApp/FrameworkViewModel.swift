//
//  FrameworkViewModel.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/12/21.
//

import Foundation

//observableObject allows the properties to publish information like broadcast  hey i have changed update yourself so that the listening viewss can update
class FrameworkGridViewModel: ObservableObject {
    
    var selectedFrameWork: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView =  false
    
    
}

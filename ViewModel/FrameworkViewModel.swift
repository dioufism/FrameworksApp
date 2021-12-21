//
//  FrameworkViewModel.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/12/21.
//

import Foundation
import SwiftUI

//observableObject allows the properties to publish information like broadcast  hey i have changed update yourself so that the listening viewss can update
class FrameworkGridViewModel: ObservableObject {
    
    var selectedFrameWork: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem] = [ GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    @Published var isShowingDetailView =  false
    
    
}

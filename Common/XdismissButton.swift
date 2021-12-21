//
//  XdismissButton.swift
//  FrameworksApp
//
//  Created by ousmane diouf on 12/20/21.
//

import SwiftUI

struct XdismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
    }
}

struct XdismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XdismissButton(isShowingDetailView: .constant(false))
    }
}

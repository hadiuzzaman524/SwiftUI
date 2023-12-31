//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Hadiuzzaman on 30/12/23.
//

import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    var selectedFramework : Framework? {
        //Call everytime when selected framework value is changed
        
        didSet{
            isShowingDetailsView = true
        }
    }
    
   @Published var isShowingDetailsView = false
    
    
}

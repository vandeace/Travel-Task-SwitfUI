//
//  WebView.swift
//  TravelTaskWeek2
//
//  Created by Muhammad Jafar Ash Siddiq on 30/11/22.
//

import Foundation
import SafariServices
import SwiftUI

struct WebView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
}

//
//  SafariView.swift
//  Apple-Framework
//
//  Created by Hadiuzzaman on 31/12/23.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{

    let url: URL
    func makeUIViewController(context:Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

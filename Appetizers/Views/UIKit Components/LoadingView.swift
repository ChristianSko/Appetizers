//
//  LoadingView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 24/1/21.
//

import SwiftUI


struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadingView: View {
    var body: some View{
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
        }
     
        ProgressView("Loading")
            .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
            .scaleEffect(2)
    }
}

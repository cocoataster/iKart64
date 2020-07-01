//
//  NavigationBarModifier.swift
//  iKart64
//
//  Created by Eric Sans on 27/06/2020.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    
    let backgroundColor: UIColor
    let foregroundColor: UIColor
    let tintColor: UIColor?
    
    init(
        backgroundColor: UIColor,
        foregroundColor: UIColor,
        tintColor: UIColor? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.tintColor = tintColor
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        appearance.shadowColor = .clear // include as argument
        appearance.titleTextAttributes = [
            .foregroundColor: foregroundColor
        ]
        appearance.largeTitleTextAttributes = [
            .foregroundColor: foregroundColor
        ]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = tintColor
    }
    
    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                GeometryReader { geometry in
                    Color(backgroundColor)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}

extension View {
    
    func navigationBarColor(
        backgroundColor: UIColor = .clear,
        foregroundColor: UIColor = .white,
        tintColor: UIColor?
    ) -> some View {
        modifier(
            NavigationBarModifier(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                tintColor: tintColor
            )
        )
    }
}

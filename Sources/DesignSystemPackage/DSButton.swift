//
//  DSButton.swift
//  DesignSystem
//
//  Created by Vlad Ispas on 04.07.2024.
//

import SwiftUI

public struct DSButton: View {
    
    private let title: String
    private let titleColor: Color
    private let backgroundColor: Color
    private let action: () -> Void
    
    /// The title and action parameters are required for this view. The titleColor and backgroundColor are not required, having the default values set as .black and .gray.opacity(0.1) respectively.
    /// - Parameters:
    ///   - title:  The title of the button
    ///   - titleColor: The color of the title
    ///   - backgroundColor: The color of the button's background
    ///   - action: The action that will trigger after the button has been pressed
    public init(title: String, titleColor: Color = .black, backgroundColor: Color = .gray.opacity(0.1), action: @escaping () -> Void) {
        self.title = title
        self.titleColor = titleColor
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(height: 44)
                .frame(maxWidth: .infinity)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(titleColor)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(backgroundColor)
                        .stroke(.black.opacity(0.1), lineWidth: 1)
                }
        }
    }
    
}

#Preview {
    DSButton(title: "Button") { }
}

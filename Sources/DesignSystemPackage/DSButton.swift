//
//  DSButton.swift
//  DesignSystem
//
//  Created by Vlad Ispas on 04.07.2024.
//

import SwiftUI

public struct DSButton: View {
    
    private let title: String
    private let action: () -> Void
    
    /// Both parameters are required for this button.
    /// - Parameters:
    ///   - title:  The title of the button
    ///   - action: The action that will trigger after the button has been pressed
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
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
                .foregroundStyle(.black)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.gray.opacity(0.1)))
                        .stroke(.black.opacity(0.1), lineWidth: 1)
                }
        }
    }
    
}

#Preview {
    DSButton(title: "Button") { }
}

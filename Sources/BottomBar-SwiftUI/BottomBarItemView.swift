//
//  BottomBarItemView.swift
//  BottomBar
//
//  Created by Bezhan Odinaev on 7/2/19.
//  Copyright © 2019 Bezhan Odinaev. All rights reserved.
//

import SwiftUI

public struct BottomBarItemView: View {
    public let isSelected: Bool
    public let item: BottomBarItem
    
    public var body: some View {
        HStack {
            Image(systemName: item.icon)
                .imageScale(.medium)
                .foregroundColor(isSelected ? item.color : .secondary)
            
            if isSelected {
                Text(item.title)
                    .foregroundColor(item.color)
                    .fontWeight(.regular)
            }
        }
        .padding()
        .background(
            Capsule()
                .fill(isSelected ? item.color.opacity(0.2) : Color.clear)
        )
    }
}

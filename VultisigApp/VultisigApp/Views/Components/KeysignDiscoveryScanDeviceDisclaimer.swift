//
//  KeysignDiscoveryScanDeviceDisclaimer.swift
//  VultisigApp
//
//  Created by Amol Kumar on 2025-04-03.
//

import SwiftUI

struct KeysignDiscoveryScanDeviceDisclaimer: View {
    @Binding var showAlert: Bool
    
    var body: some View {
        HStack(spacing: 12) {
            infoIcon
            text
            closeButton
        }
        .foregroundColor(.neutral0)
        .padding(12)
        .background(Color.blue600)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.blue200, lineWidth: 1)
        )
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
    }
    
    var infoIcon: some View {
        Image(systemName: "info.circle")
            .resizable()
            .frame(width: 16, height: 16)
    }
    
    var text: some View {
        Text(NSLocalizedString("keysignDiscoveryScanDeviceDisclaimer", comment: ""))
            .font(.body14BrockmannMedium)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var closeButton: some View {
        Button {
            showAlert = false
        } label: {
            closeButtonLabel
        }
    }
    
    var closeButtonLabel: some View {
        Image(systemName: "xmark")
            .resizable()
            .frame(width: 8, height: 8)
            .padding(8)
            .background(Color.blue200)
            .cornerRadius(16)
    }
}

#Preview {
    KeysignDiscoveryScanDeviceDisclaimer(showAlert: .constant(false))
}

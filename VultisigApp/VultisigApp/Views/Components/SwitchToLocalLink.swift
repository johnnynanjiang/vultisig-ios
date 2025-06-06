//
//  SwitchToLocalLink.swift
//  VultisigApp
//
//  Created by Amol Kumar on 2025-02-27.
//

import SwiftUI

struct SwitchToLocalLink: View {
    let isForKeygen: Bool
    @Binding var selectedNetwork: NetworkPromptType
    
    var body: some View {
        Button {
            toggleNetwork()
        } label: {
            label
        }
    }
    
    var label: some View {
        ZStack {
            if selectedNetwork == .Internet {
                switchToLocalLabel
            } else {
                switchToInternetLabel
            }
        }
        .font(.body12BrockmannMedium)
        .frame(maxWidth: .infinity, alignment: .center)
    }
    
    var switchToLocalLabel: some View {
        HStack {
            if isForKeygen {
                Text(NSLocalizedString("wantToCreateVaultPrivately", comment: ""))
            } else {
                Text(NSLocalizedString("wantToSignPrivately", comment: ""))
            }
            
            Text(NSLocalizedString("switchToLocalMode", comment: ""))
            .underline()
        }
    }
    
    var switchToInternetLabel: some View {
        Text(NSLocalizedString("switchBackToInternetMode", comment: ""))
        .underline()
        .font(.body12BrockmannMedium)
    }
    
    private func toggleNetwork() {
        withAnimation {
            if selectedNetwork == .Internet {
                selectedNetwork = .Local
            } else {
                selectedNetwork = .Internet
            }
        }
    }
}

#Preview {
    SwitchToLocalLink(isForKeygen: true, selectedNetwork: .constant(.Internet))
}

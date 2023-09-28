//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Samuel Martins on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList().frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView().environmentObject(ModelData())
}

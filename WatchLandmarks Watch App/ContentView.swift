//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Samuel Martins on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environmentObject(ModelData())
}

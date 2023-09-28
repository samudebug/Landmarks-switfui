//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Samuel Martins on 27/09/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    var body: some View {
        NavigationView {
            List {
                PageView(pages: modelData.features.map{ FeatureCard(landmark: $0)}).aspectRatio(3/2,contentMode: .fit).listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }.listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
                .toolbar {
                    Button {
                        showingProfile.toggle()
                    } label: {
                        Label("User Profile", systemImage: "person.crop.circle")
                    }
                }.sheet(isPresented: $showingProfile, content: {
                    ProfileHost().environmentObject(modelData)
                })
        }
    }
}

#Preview {
    CategoryHome().environmentObject(ModelData())
}

//
//  LandmarkList.swift
//  Landmarks
//
//  Created by nizapizza on 20/05/21.
//
import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        NavigationView {
            List() {
                Toggle(isOn: $showFavoritesOnly) {
                                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) {
                landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }}
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
                .environmentObject(ModelData())
        }
}

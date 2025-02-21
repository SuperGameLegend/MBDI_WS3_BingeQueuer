//
//  SeriesDetail.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Emre Sağır on 21/02/2025.
//

import SwiftUI
import CoreLocation

struct SeriesDetail: View {
    var series : Series
    let spacerSize = -150.0
    let mapHeight = 300.0
    var body: some View {
        ScrollView{
            VStack{
                MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                    .frame(height: mapHeight)
                
                CircleImage(image: Image(series.image))
                    .offset(y : spacerSize)
                    .padding(.bottom, spacerSize)
                
                Text(series.title)
                Text(series.description).padding()
            }
            
        }.navigationTitle(series.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SeriesDetail(series: seriesSourceList[2])
}

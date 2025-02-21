//
//  SeriesList.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Emre Sağır on 21/02/2025.
//

import SwiftUI

struct SeriesList: View {
    @State var seriesDataList = seriesSourceList
    var body: some View {
        NavigationView{
            List{
                ForEach(seriesDataList){
                    series in NavigationLink(destination: SeriesDetail(series: series)){
                        BingeRow(series: series)
                    }
                }.onDelete(perform: delete)
            }.toolbar{ EditButton()}
        }.navigationTitle("BingeQueuer")
        

    }
    
    func delete(at offsets: IndexSet){
        seriesDataList.remove(atOffsets: offsets)
    }
}


#Preview {
    SeriesList()
}

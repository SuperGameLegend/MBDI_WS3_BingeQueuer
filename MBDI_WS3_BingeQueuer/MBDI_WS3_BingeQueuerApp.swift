//
//  MBDI_WS3_BingeQueuerApp.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Emre Sağır on 14/02/2025.
//

import SwiftUI

@main
struct MBDI_WS3_BingeQueuerApp: App {
    var body: some Scene {
        WindowGroup {
            BingeRow(series: seriesSourceList[2])
        }
    }
}

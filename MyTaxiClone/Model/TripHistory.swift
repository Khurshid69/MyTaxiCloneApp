//
//  TripHistory.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import Foundation

struct TripHistory {
    let departure: String
    let arrival: String
    let time: String
    let carName: String
}

extension TripHistory {
    static func buildSample() -> Self {
        TripHistory(departure: "улица Sharof Rashidov, Ташкент",
                    arrival: "5a улица Асадуллы Ходжаева",
                    time: "12:00 - 12:19",
                    carName: ["Bitmap-1", "Bitmap-2", "Bitmap"].randomElement()!)
    }
}

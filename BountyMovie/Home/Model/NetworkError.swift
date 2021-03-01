//
//  NetworkError.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 02/02/2021.
//

import Foundation
import Foundation

enum NetworkError: Error, CustomStringConvertible {
    case noData
    case noResponse
    case undecodableData

    var description: String {
        switch self {
        case .noData:
            return "There is no data !"
        case .noResponse:
            return "Response status is incorrect !"
        case .undecodableData:
            return "Data can't be decoded !"
        }
    }
}

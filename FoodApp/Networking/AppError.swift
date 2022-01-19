//
//  AppError.swift
//  FoodApp
//
//  Created by Ivan Valero on 17/01/2022.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "La respuesta no se pudo decodificar por un error"
        case .unknownError:
            return "Error desonocido"
        case .invalidUrl:
            return "Url invalida"
        case .serverError(let error):
            return error
        }
}
}

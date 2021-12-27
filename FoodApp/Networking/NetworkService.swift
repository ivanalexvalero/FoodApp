//
//  NetworkService.swift
//  FoodApp
//
//  Created by Ivan Valero on 23/12/2021.
//

import Foundation


struct NetworkService {
    
    
    /// Esta función ayuda a generar una solicitud url
    /// - Parameters:
    ///   - route: ruta al backend
    ///   - method: tipo de solicitud que se realizará
    ///   - parameters: cualquier info extra que se necesite pasar al backend
    /// - Returns: la solicitud de url
    func createRequest(route: Route,
                               method: Method,
                               parameters: [String: Any]? = nil) -> URLRequest? {
        let urlString = Route.baseUrl + route.description
        guard let url = urlString.asUrl else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = method.rawValue
        
        if let params = parameters {
            switch method {
            case .get:
                var urlComponent = URLComponents(string: urlString)
                urlComponent?.queryItems = params.map {
                    URLQueryItem(name: $0, value: "\($1)") }
                urlRequest.url = urlComponent?.url
            case .post, .delete, .patch:
                let bodyData = try? JSONSerialization.data(withJSONObject: params, options: [])
                urlRequest.httpBody = bodyData
            }
        }
        return urlRequest
    }
}

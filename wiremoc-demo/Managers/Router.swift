//
//  Router.swift
//  wiremoc-demo
//
//  Created by Eiji Kushida on 2017/07/15.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import Alamofire

enum Router: URLRequestConvertible {

    static let baseURLString = "http://localhost:1234"

    case users([String: Any])
    case userInfo([String: Any])

    func asURLRequest() throws -> URLRequest {

        let (method, path, parameters): (HTTPMethod, String, [String: Any]) = {

            switch self {
            case .users(let params):
                return (.get, "/users", params)

            case .userInfo(let params):
                return (.get, "/userById", params)
            }
        }()

        if let url = URL(string: Router.baseURLString) {
            var urlRequest = URLRequest(url: url.appendingPathComponent(path))
            urlRequest.httpMethod = method.rawValue
            return try Alamofire.URLEncoding.default.encode(urlRequest, with: parameters)
        } else {
            fatalError("URLがnil")
        }
    }
}

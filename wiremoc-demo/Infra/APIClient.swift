//
//  APIClient.swift
//  wiremoc-demo
//
//  Created by Eiji Kushida on 2017/07/15.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import Alamofire

enum Result {
    case success(Any)
    case failure(Error)
}

final class APIClient {

    func request(router: Router,
                 completionHandler: @escaping (Result) -> Void = {_ in
        }) {

        Alamofire.request(router).responseJSON { response in

            print(response.response?.statusCode ?? "unwap status code")

            switch response.result {
            case .success(let value):
                completionHandler(Result.success(value))

            case .failure:

                if let error = response.result.error {
                    completionHandler(Result.failure(error))
                } else {
                    fatalError("エラーのインスタンスがnil")
                }
            }
        }
    }
}

//
//  UserInfoAPI.swift
//  wiremoc-demo
//
//  Created by Eiji Kushida on 2017/07/16.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class UserInfoAPI {

    func fetch(userId: String) {

        let router = Router.userInfo(["userId": userId])

        APIClient().request(router: router) { (response) in

            switch response {
            case .success(let result) :
                print(result)
                break

            case .failure(let error):
                print(error.localizedDescription)
                break
            }
        }
    }
}

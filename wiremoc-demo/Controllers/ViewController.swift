//
//  ViewController.swift
//  wiremoc-demo
//
//  Created by Eiji Kushida on 2017/07/15.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    //MARK: IBAction
    @IBAction func didTapLoadUsersList(_ sender: UIButton) {
        UsersListAPI().fetch()
    }

    @IBAction func didTapLoadUserInfo(_ sender: UIButton) {
        UserInfoAPI().fetch(userId: "2")
    }
}


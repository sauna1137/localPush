//
//  ViewController.swift
//  localPush
//
//  Created by KS on 2022/01/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tappedLocalPushButton(_ sender: Any) {

        let content = UNMutableNotificationContent()
        content.title = "お知らせ 日曜日"
        content.subtitle = "ニュースの時間"
        content.body = "雨が降っています"

        let request = UNNotificationRequest(identifier: "localPush", content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

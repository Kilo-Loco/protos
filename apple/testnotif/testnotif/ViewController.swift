//
//  ViewController.swift
//  testnotif
//
//  Created by Kilo Loco on 10/29/20.
//

import Amplify
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapSend() {
        print("send")
        
//        let ipad = "4705F0964D0E599F6F03CE2178111927E326EB8D53FAE319B10037C21B496AB2"
        let iphone = "47D37B6AD2878AC6CFAB8714222C212B8F323E46FB32C1692FEBE3A403C7C530"
        
        let notif = Notification(deviceToken: iphone)
        Global.shared.date = Date()
        Amplify.API.mutate(request: .create(notif)) { result in
            do {
                let createdNotif = try result.get().get()
                print("created notification", createdNotif)
            } catch {
                print("could not create notification", error)
            }
        }
    }

}


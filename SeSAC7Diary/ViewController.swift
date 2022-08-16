//
//  ViewController.swift
//  SeSAC7Diary
//
//  Created by Seokjune Hong on 2022/08/16.
//

import UIKit
import SeSAC2UIFramework

class ViewController: UIViewController {
    
    var name = "고래밥"
    var age = 22

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        testOpen()
//        showSesacAlert(title: "테스트", message: "메시지", buttonTitle: "저장") { _ in
//            self.view.backgroundColor = .lightGray
        
//        let image = UIImage(systemName: "star.fill")!
//        let shareURL = "https://www.apple.com"
//        let text = "WWDC What's in New!"
//        sesacShowActivityViewController(shareImage: image, shareURL: shareURL, shareText: text)
        
//        }
        
        OpenWebView.presentWebViewController(self, url: "https://www.naver.com", transitionStyle: .present)
    }

}


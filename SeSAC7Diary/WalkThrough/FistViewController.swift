//
//  FistViewController.swift
//  SeSAC7Diary
//
//  Created by Seokjune Hong on 2022/08/16.
//

import UIKit

class FistViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var blackViewWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialLabel.numberOfLines = 0
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!
        """
        
        blackView.backgroundColor = .black
        
        tutorialLabel.alpha = 0
        UIView.animate(withDuration: 3) {
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            self.animateBlackView()
        }

    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackViewWidth.constant += 200
            self.blackView.alpha = 1
//            self.blackView.frame.size.width += 250
        } completion: { _ in
            print("Complete")
        }

    }

}

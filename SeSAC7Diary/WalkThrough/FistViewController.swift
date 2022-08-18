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
    @IBOutlet weak var starImageView: UIImageView!
    
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
//            self.tutorialLabel.backgroundColor = .yellow
            self.tutorialLabel.alpha = 1
        } completion: { _ in
            self.animateBlackView()
        }
        
        starImageView.image = UIImage(systemName: "star.fill")
        animateImageView()

    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 2) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1)
            self.blackView.alpha = 1
//            self.blackView.frame.size.width += 250
        } completion: { _ in
            print("Complete")
        }

    }
    
    func animateImageView() {
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse]) {
            self.starImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        } completion: { _ in
            print("complete")
        }

    }

}

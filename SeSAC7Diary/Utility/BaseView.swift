//
//  BaseView.swift
//  SeSAC7Diary
//
//  Created by Seokjune Hong on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    
    // 코드 베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
        
    }
    
    // xib storyboard, protocol
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented") // 런타임 오류
    }
    
    func configureUI() { }
    func setConstraints() { }
}

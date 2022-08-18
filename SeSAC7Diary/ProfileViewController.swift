//
//  ProfileViewController.swift
//  SeSAC7Diary
//
//  Created by Seokjune Hong on 2022/08/18.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let saveButton: UIButton = {
        let view = UIButton()
        view.setTitle("저장", for: .normal)
        view.backgroundColor = .darkGray
        view.tintColor = .black
        
        return view
    }()
    
    let nameTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "이름을 입력하세요."
        view.backgroundColor = .brown
        view.textColor = .white
        
        return view
    }()
    
    var saveButtonActionHandler: (() -> ())?
    
    func configure() {
        [saveButton, nameTextField].forEach { view.addSubview($0) }
        
        nameTextField.snp.makeConstraints {
            $0.leading.trailing.equalTo(view).inset(50)
            $0.top.equalTo(50)
            $0.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints {
            $0.width.height.equalTo(100)
            $0.center.equalTo(view)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configure()
        
        saveButton.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
    }

    @objc func saveButtonClicked() {
        //값 전달 기능 실행 => 클로저 구문 활용
        saveButtonActionHandler?()
        
        dismiss(animated: true)
    }
}

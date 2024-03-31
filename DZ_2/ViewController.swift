//
//  ViewController.swift
//  DZ_2
//
//  Created by Nikita Shipovskiy on 31/03/2024.
//

import UIKit

class ViewController: UIViewController {

    private lazy var imageBackground: UIImageView = {
        $0.image = .imgMain
        return $0
    }(UIImageView(frame: CGRect(x: 0, y: 0, width: 430, height: 156)))
    
    private lazy var imageProfile: UIImageView = {
        $0.image = .imgProgil
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 50
        return $0
    }(UIImageView(frame: CGRect(x: 30, y: imageBackground.bounds.height + 33, width: 100, height: 100)))
    
    
    private lazy var nameLabel: UILabel = {
        $0.text = "Имя Фамилия"
        $0.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return $0
    }(UILabel(frame: CGRect(x: imageProfile.bounds.width + 50, y: imageBackground.bounds.height + 52, width: 115, height: 19)))
    
    private lazy var editButton: UIButton = {
        $0.setTitle("Редоктировать", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 10
        
        return $0
    }(UIButton(frame: CGRect(x: nameLabel.bounds.width + 30, y: 236, width: 147, height: 34)))
    

    private lazy var addLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.text = "Добавить описание"
        $0.textColor = .black
        return $0
    }(UILabel(frame: CGRect(x: 30 , y: 341, width: 156, height: 19)))
    

    private lazy var textView: UITextView = {
        $0.backgroundColor = .colorGray
        $0.layer.cornerRadius = 15
        return $0
    }(UITextView(frame: CGRect(x: 30, y: 369, width: 340, height: 150)))
    
    private lazy var changePasscode: UILabel = {
        $0.text = "Изменить пароль"
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.textColor = .black
       return $0
    }(UILabel(frame: CGRect(x: 30, y: 552, width: 139, height: 19)))
    
    private lazy var oldPasscode = createFiled(originY: 580, placeholder: "Старый пароль")
    private lazy var newPasscode = createFiled(originY: 646, placeholder: "Новый пароль")
    
    private lazy var saveButton: UIButton = {
        $0.setTitle("Сохранить", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 10
    
        
        return $0
    }(UIButton(frame: CGRect(x: 30, y: 750, width: 340, height: 55)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(imageBackground)
        view.addSubview(imageProfile)
        view.addSubview(nameLabel)
        view.addSubview(editButton)
        view.addSubview(addLabel)
        view.addSubview(textView)
        view.addSubview(changePasscode)
        view.addSubview(oldPasscode)
        view.addSubview(newPasscode)
        view.addSubview(saveButton)
        
        
        
    }
    func createFiled(originY: CGFloat, placeholder: String, originX: CGFloat = 30) -> UITextField {
        let textFiled = UITextField(frame: CGRect(x: originX, y: originY, width: 340, height: 52))
        textFiled.placeholder = placeholder
        textFiled.backgroundColor = .colorGray
        textFiled.textColor = .gray
        textFiled.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 31, height: 1))
        textFiled.leftViewMode = .always
        textFiled.layer.cornerRadius = 10
    
        
        
        
        return textFiled
    }

}


#Preview() {
    ViewController()
}

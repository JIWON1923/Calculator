//
//  Utilities.swift
//  Calculator
//
//  Created by Lee Ji Won on 2021/12/12.
//

import UIKit

// Button을 많이 생성해야되기 때문에 모듈화하여 재사용성을 높인다.
class Utilites{
    static let shared = Utilites() // static 변수를 설정하면, 인스턴스를 생성하지 않고도 접근 가능 
    
    func makeNumberBtn(number: String, numberColor: UIColor, backgroundColor: UIColor) -> UIButton{
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.setTitle(number, for: UIControl.State.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 50, weight:(UIFont.Weight.regular))
        btn.backgroundColor = backgroundColor
        btn.tintColor = numberColor
        btn.widthAnchor.constraint(equalToConstant: 80).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 80).isActive = true
        btn.layer.cornerRadius = 40
        return btn
        
    }
}

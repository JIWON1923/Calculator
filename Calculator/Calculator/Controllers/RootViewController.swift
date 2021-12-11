//
//  RootViewController.swift
//  Calculator
//
//  Created by Lee Ji Won on 2021/12/11.
//

import UIKit

class RootViewController: UIViewController{
    
    
    //Mark - Properties
    private lazy var numberButton:UIButton = Utilites.shared.makeNumberBtn(number: "1", numberColor: .white, backgroundColor: .systemGray2)
    
    
    // Mark -  Lifecycles
    
    // RootViewController class가 호출되었을 때, 딱 한 번만 호출되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        view.addSubview(numberButton)
        
        // code로 UI를 썼을 때 동적으로 변할 수 있도록
        numberButton.translatesAutoresizingMaskIntoConstraints = false
        
        numberButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        numberButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        
    }
    
    // Mark - Configure (UI 담당 함수)
    func configureUI() {
        view.backgroundColor = .systemBackground // Dark 모드일 경우 검정색, 아닐경우 화이트
    }
    
}

//
//  ButtonWithRedDot.swift
//  LTScrollView_Example
//
//  Created by Ann on 2020/6/9.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

/// 有紅點的Button
class ButtonWithRedDot: UIButton {

    /// 紅點
    let redDotView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 3
        view.backgroundColor = UIColor(red: 194/255, green: 41/255, blue: 46/255, alpha: 1.0)
        return view
    }()
    
    /// 是否隱藏
    var isHiddenRedDot: Bool = true {
        didSet {
            setRedDotView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(redDotView)
        redDotView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            redDotView.rightAnchor.constraint(equalTo: rightAnchor, constant: 3),
            redDotView.topAnchor.constraint(equalTo: topAnchor, constant: 3),
            redDotView.heightAnchor.constraint(equalToConstant: redDotView.layer.cornerRadius * 2),
            redDotView.widthAnchor.constraint(equalToConstant: redDotView.layer.cornerRadius * 2)
        ])
        setRedDotView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setRedDotView() {
        redDotView.isHidden = isHiddenRedDot
    }
}

//
//  TauntingView.swift
//  MagicStoreMix
//
//  Created by 陳姿穎 on 2019/11/9.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class TauntingView: UIView {

    private weak var mv: MagicShopView?
    
    @IBOutlet private var byeByeButton: UIButton! {
        didSet {
            setViewBorder(view: byeByeButton, configSetting: .purchaseButton)
        }
    }
    
    @IBAction private func tapToByeBye(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1), execute: {
            self.removeFromSuperview()
            self.mv?.shopIsUserInteractionEnabled(true)
        })
    }
}

extension TauntingView {
    
    func perpare(mv: MagicShopView) { self.mv = mv }
    
}

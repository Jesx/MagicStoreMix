//
//  ViewController.swift
//  MagicStoreMix
//
//  Created by Jes Yang on 2019/11/6.
//  Copyright © 2019 Jes Yang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let correctAnswer = [true, true, false, true, true, false, false]
    
    var didInput = [Bool]() {
        didSet {
            if self.didInput.count == 8 {
                self.didInput.removeFirst()
                print(self.didInput)
            }
            if self.didInput == correctAnswer {
                UserPersist.shared.user.totalMoney += 100
                moneyLabel.text = "\(UserPersist.shared.user.totalMoney)"
            }
        }
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        moneyLabel.text = "$ \(UserPersist.shared.user.totalMoney)"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        didInput = [Bool]()
    }

    @IBAction func aboveButton(_ sender: UIButton) {
        didInput.append(true)
    }
    
    @IBAction func belowButton(_ sender: UIButton) {
        didInput.append(false)
    }
}


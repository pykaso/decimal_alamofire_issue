//
//  ViewController.swift
//  decimal_alamofire_issue
//
//  Created by Lukas Gergel on 14/05/2020.
//  Copyright © 2020 Lukas Gerge. All rights reserved.
//

import Alamofire
import UIKit

struct SampleStruct: Encodable {
    let price: Decimal
    let discount: Decimal
}

class ViewController: UIViewController {
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
    }

    @objc func onTap(button: UIButton) throws {
        let data = SampleStruct(price: 12.34, discount: 0.01)
        let encoder = URLEncodedFormEncoder()
        let result: String = try encoder.encode(data)
        print(result)
    }
}

//
//  ViewController.swift
//  MultipleLanguages
//
//  Created by Nazar Kopeika on 26.05.2023.
//

import UIKit

class ViewController: UIViewController {

    private let myLabel: UILabel = { /* 1 */
        let label = UILabel() /* 2 */
        label.text = "Hello".localized() /* 3 */ /* 12 add localized */
        label.textAlignment = .center /* 4 */
        label.font = .systemFont(ofSize: 32, weight: .semibold) /* 5 */
        return label /* 6 */
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myLabel) /* 7 */
        myLabel.frame = view.bounds /* 8 */
    }
    
    
}

extension String { /* 9 */
    func localized() -> String { /* 10 */
        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self
        ) /* 11 */
    }
}

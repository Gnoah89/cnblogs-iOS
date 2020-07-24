//
//  ProblemViewController.swift
//  CnBlogs-iOS
//
//  Created by Noah on 2020/7/22.
//  Copyright © 2020 rsenjoyer. All rights reserved.
//

import UIKit

extension ProblemViewController {

    static func make() -> ProblemViewController {
        return ProblemViewController()
    }
}


class ProblemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let titleItem = self.navigationController?.navigationBar.topItem {
            titleItem.title = "博问"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

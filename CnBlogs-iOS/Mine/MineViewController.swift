//
//  SideViewController.swift
//  CnBlogs-iOS
//
//  Created by enjoy on 2019/11/4.
//  Copyright © 2019 rsenjoyer. All rights reserved.
//

import UIKit
import Common


public enum CellComponent: String {
    case logged
    case unlogged
    case home
    case knowledge
    case problem
    case setting

    var title: String {
        switch self {
        case .logged:
            return ""
        case .unlogged:
            return ""
        case .home:
            return "首页"
        case .knowledge:
            return "闪存"
        case .problem:
            return "提问"
        case .setting:
            return "设置"
        }
    }

    var height: CGFloat {
        switch self {
        case .logged, .unlogged:
            return 80.0
        case .home, .knowledge, .problem, .setting:
            return 60
        }
    }
}

extension CellComponent {

    var identifier: String {
        switch self {
        case .logged:
            return "NickNameCell"
        case .unlogged:
            return "NickNameCell"
        case .home, .knowledge, .problem, .setting:
            return "TitleCell"
        }
    }
}

extension UIStoryboard {
    static var main: UIStoryboard {
        return UIStoryboard(name: "Mine", bundle: nil)
    }
}


extension MineViewController {
    static func make() -> MineViewController {
        return UIStoryboard.main.instantiateInitialViewController() as! MineViewController
    }
}

class MineViewController: UIViewController {

    var dataSoruce: [CellComponent] {
        return [.logged, .unlogged, .home, .knowledge, .problem, .setting]
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.tableFooterView = UIView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let titleItem = self.navigationController?.navigationBar.topItem {
            titleItem.title = "我的"
        }
    }
}

extension MineViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSoruce.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cellComponent = self.dataSoruce.object(at: indexPath.row) else {
            return UITableViewCell()
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: cellComponent.identifier, for: indexPath)

        switch cellComponent {
        case .logged:
            break;
        case .unlogged:
            break;
        case .home:
            let titleLabel = cell.viewWithTag(100) as? UILabel
            titleLabel?.text = cellComponent.title
        case .knowledge:
            let titleLabel = cell.viewWithTag(100) as? UILabel
            titleLabel?.text = cellComponent.title
        case .problem:
            let titleLabel = cell.viewWithTag(100) as? UILabel
            titleLabel?.text = cellComponent.title
        case .setting:
            let titleLabel = cell.viewWithTag(100) as? UILabel
            titleLabel?.text = cellComponent.title
        }

        return cell
    }
}

extension MineViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.dataSoruce.object(at: indexPath.row)?.height ?? CGFloat.leastNonzeroMagnitude
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let login = LoginViewController.make().navWrapper()
        present(login, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 66 : 44
    }
    
}

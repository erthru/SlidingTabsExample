//
//  SlidingViewControllerTwo.swfit
//  SlidingTabExample
//
//  Created by Suprianto Djamalu on 03/08/19.
//  Copyright © 2019 Suprianto Djamalu. All rights reserved.
//

import Foundation
import UIKit

class SlidingViewControllerTwo: UIViewController{
    
    private let tableView = UITableView()
    private let tableViewIdentifier = "TABLE_VIEW_IDENTIFIER"
    private let items = ["A","B","C","D","F","G","H","I"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        // view
        view.addSubview(tableView)
        
        // tableView
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: tableViewIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension SlidingViewControllerTwo: UITableViewDelegate {}

extension SlidingViewControllerTwo: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewIdentifier)
        cell?.textLabel!.text = items[indexPath.row]
        return cell!
    }
}

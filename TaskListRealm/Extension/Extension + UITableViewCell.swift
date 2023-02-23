//
//  Extension + UITableViewCell.swift
//  TaskListRealm
//
//  Created by Matvei Khlestov on 10.02.2023.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currrentTasks = taskList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currrentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = "\(currrentTasks.count)"
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}

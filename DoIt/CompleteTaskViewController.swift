//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Johan Bertin on 03/12/2016.
//  Copyright © 2016 yoyo. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    
    
    var task = Task()
    var previousVC = TasksViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        if task.important {
            taskLabel.text = "❗️\(task.name)"
        }else{
            taskLabel.text = task.name
        }
    }
    
    
    @IBAction func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        //Move back to the previous screen
        navigationController!.popViewController(animated: true)

    }

    
}

//
//  ViewController.swift
//  DelegateProtocol-1
//
//  Created by E5000855 on 02/06/24.
//

import UIKit


protocol TaskDelegate: AnyObject {
    func taskDidComplete(task: Task)
}

//Task Class
class Task {
    var delegate: TaskDelegate?
    
    func completeTask() {
        print("Task is compelting")
        delegate?.taskDidComplete(task: self)
    }
}

class TaskHandler: TaskDelegate {
    func taskDidComplete(task: Task) {
        print("Task-handler : task complete notification here.")
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        let task = Task()
        let taskHandler = TaskHandler()
        task.delegate = taskHandler
        task.completeTask()
    }
}

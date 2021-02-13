//
//  ViewController.swift
//  ToDoList
//
//  Created by Nikunjkumar Patel on 12/02/21.
//

import UIKit

class ToDoViewController: UITableViewController {

    enum Tag: Int{
        case cellLabel = 1000
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell" , for: indexPath)
        if let label = cell.contentView.viewWithTag(Tag.cellLabel.rawValue) as? UILabel
        {
            if indexPath.row % 5 == 0 {
                label.text = "Take a Jog"
            } else if indexPath.row % 4 == 0 {
                label.text = "Watch a Movie"
            } else if indexPath.row % 3 == 0 {
                label.text = "Code an App"
            } else if indexPath.row % 2 == 0 {
                label.text = "Walk The Dog"
            } else if indexPath.row % 1 == 0 {
                label.text = "Study Design Patterns"
            }
        }
        return cell
    }
    
    
    
}


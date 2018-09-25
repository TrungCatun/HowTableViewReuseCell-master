//
//  ViewController.swift
//  HowTableViewReuseCell
//
//  Created by Trương Thắng on 3/23/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit
class SubtitleCell: UITableViewCell {
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//    override func prepareForReuse() {
//        textLabel?.text = ""
//        detailTextLabel?.text = ""
//    }
    
    
}
class ViewController: UITableViewController {
    
    var data = Array(1...100)
    var subData = Array(1...100)

    var numberOfCell: Int = 0 {
        didSet {
            title = "Số cell: \(numberOfCell)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        if cell == nil {
            cell = SubtitleCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
            numberOfCell += 1
        }
        
        cell?.textLabel?.text = "\(data[indexPath.row])"
        
        if ![1].contains(data[indexPath.row]) {
            cell?.detailTextLabel?.text = "\(data[indexPath.row])"
            cell?.backgroundColor = UIColor.white
        } else {
            cell?.detailTextLabel?.text = "\(data[indexPath.row])"
            cell?.backgroundColor = UIColor.red
        }
        return cell!
    }
    
    

}


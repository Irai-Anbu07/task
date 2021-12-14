//
//  ViewController.swift
//  demoTableView
//
//  Created by iraiAnbu on 14/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView:UITableView!
    
    var data = [dataModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var alphabets = dataModel()
        alphabets.title = "Alphabets"
        alphabets.Array = ["A", "B", "C" , "D" , "E" , "F" , "G" , "H" , "I" , "J" , "K" , "L" , "M" , "N" , "O" , "P" , "Q" , "K" , "L" , "M" , "N" , "O" , "P", "Q"]
        
        data.append(alphabets)
        
        var numbers = dataModel()
        numbers.title = "Numbers"
        numbers.Array = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]
        
        data.append(numbers)
        
        
        tableView.dataSource = self
        tableView.delegate  = self
        
        
        tableView.register(labelTVCell.self , forCellReuseIdentifier: labelTVCell().identifier)
        
        
    }


}



extension ViewController : UITableViewDataSource , UITableViewDelegate {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].Array?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: labelTVCell().identifier , for: indexPath) as! labelTVCell
        
        
        cell.label.text = data[indexPath.section].Array?[indexPath.row]
        cell.label.textColor = .black
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return data[section].title ?? ""
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    
}



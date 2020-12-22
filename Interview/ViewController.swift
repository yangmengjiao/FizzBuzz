//
//  ViewController.swift
//  Interview
//
//  Created by mengjiao on 12/22/20.
//

import UIKit

class ViewController: UITableViewController {
    let rowCount = 1000
    let cellIdentifier = "FizzBuzzCell"
    let fizzBuzz = "FizzBuzz"
    let fizz = "Fizz"
    let buzz = "Buzz"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = getText(indexPath.row)
        return cell
    }
    
    //MARK：- Help Function
    // - parametes
    // - num: the row of cell
    private func getText(_ num: Int) -> String {
        if num.isMultiple(of: 15) {
            return fizzBuzz
        } else if num.isMultiple(of: 5) {
            return buzz
        } else if num.isMultiple(of: 3) {
            return fizz
        } else {
            return String(num)
        }
    }
}


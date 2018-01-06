//
//  ViewController.swift
//  TableViewBasics
//
//  Created by Eran Guttentag on 2/19/16.
//  Copyright © 2016 obqa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cities = ["Jerusalem", "Tel-Aviv Yaffo", "Haifa", "Be'er Sheva", "Rishon Letsion", "Ashdod", "Ashkelon", "Kazerin", "Kiryat Shemona", "Eilat", "Ramat Gan", "Givatayim", "Arad", "Rehovot"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cityCell")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cityCell")
        }
        cell!.textLabel?.text = cities[indexPath.row]
        cell!.detailTextLabel?.text = indexPath.row.description
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("The city \(cities[indexPath.row]) in row \(indexPath.row) was selected")
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


//
//  ViewController.swift
//  projectProtocols
//
//  Created by 2020-1 on 10/25/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [String] = ["Juan","Diego","Sofi","Daniel"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView(){
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "celda") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Juguito de chale para \(data[indexPath.row])")
    }
    
}

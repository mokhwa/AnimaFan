//
//  ViewController.swift
//  gg
//
//  Created by D7703_22 on 2019. 5. 9..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["Cat", "Horse", "Pig", "Bird", "Whale", "Dog"]
    var subTitle = ["고양이", "말", "돼지", "새", "고래", "강아지"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        
        self.title = "Animal Farm"
    }
    
    // UITableViewDataSource Method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let myRow = indexPath.row
        
        myCell.textLabel?.text = animals[myRow]
        myCell.detailTextLabel?.text = subTitle[myRow]
        
        // cell에 이미지 넣기
        myCell.imageView?.image = UIImage(named: animals[myRow])
        return myCell
    }
    
    // UITableViewDelegate Method
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    
}





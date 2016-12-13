//
//  ViewController.swift
//  TimesTable
//
//  Created by Tomas-William Haffenden on 13/12/16.
//  Copyright © 2016 PomHaffs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var currentNumber: UILabel!
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var sliderSelection: UISlider!
    
    var selectedNumber = 0
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        selectedNumber = Int(sliderSelection.value)
        currentNumber.text = String(selectedNumber)
        
        if selectedNumber == 0 {
            table.isHidden = true
        } else {
            table.isHidden = false
        }
        
        table.reloadData()
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let answer = String(selectedNumber * indexPath.row)
        
        cell.textLabel?.text = "\(selectedNumber) multiplied by \(indexPath.row) equals \(answer)"
    
        return cell
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  MyDiaryApp
//
//  Created by Alex on 2016-04-29.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var entries = [Entry]()
    
    let tableView = UITableView()
    
    let colors = [UIColor.whiteColor(),
                  UIColor.purpleColor(),
                  UIColor.redColor(),
                  UIColor.grayColor(),
                  UIColor.greenColor(),
                  UIColor.lightGrayColor(),
                  UIColor.blueColor(),
                  UIColor.brownColor(),
                  UIColor.cyanColor(),
                  UIColor.magentaColor()]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.frame = view.frame
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "entry")
        
        entries = Entry.creatieSampleEntries()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("entry")!
        
        cell.textLabel?.text = entries[indexPath.row].title
        
        if entries[indexPath.row].read {
            cell.textLabel?.text! += " - (read)"
        }
        
        cell.backgroundColor = colors[indexPath.row % 10]
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let controller = EntryViewController()
        controller.entry = entries[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }

}


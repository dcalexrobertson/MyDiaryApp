//
//  EntryViewController.swift
//  MyDiaryApp
//
//  Created by Alex on 2016-04-30.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

    var entry: Entry!
    
    var scrollView: UIScrollView!
    var descriptionLabel: UILabel!
    var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entry.read = true
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .whiteColor()
        view.addSubview(scrollView)
        
        addSubviews()
    }
    
    func addSubviews() {
        
        descriptionLabel = UILabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.textAlignment = .Center
        descriptionLabel.lineBreakMode = .ByWordWrapping
        descriptionLabel.numberOfLines = 0
        descriptionLabel.text = entry.description
        scrollView.addSubview(descriptionLabel)
        
        addConstraints()
    }
    
    func addConstraints() {
        
        let views = Dictionary(dictionaryLiteral: ("scroll", scrollView),("description", descriptionLabel))
        let metrics = Dictionary(dictionaryLiteral: ("width", scrollView.frame.width - 60))
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-[scroll]-|", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[scroll]-|", options: [], metrics: nil, views: views))
        
        scrollView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-80-[description]-|", options: [], metrics: nil, views: views))
        scrollView.addConstraints((NSLayoutConstraint.constraintsWithVisualFormat("H:|-30-[description(width)]-30-|", options: [], metrics: metrics, views: views)))
    }
}

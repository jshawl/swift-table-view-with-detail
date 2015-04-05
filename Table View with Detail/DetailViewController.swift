//
//  DetailViewController.swift
//  Table View with Detail
//
//  Created by Jesse Shawl on 4/5/15.
//  Copyright (c) 2015 Jesse Shawl. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detail: UILabel!
    var item:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        detail.text = item
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

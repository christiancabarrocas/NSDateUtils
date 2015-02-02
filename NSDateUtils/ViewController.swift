//
//  ViewController.swift
//  NSDateUtils
//
//  Created by Christian Cabarrocas on 31/1/15.
//  Copyright (c) 2015 ccs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelNow: UILabel!
    @IBOutlet weak var labelSubstractOneHour: UILabel!
    @IBOutlet weak var labelPlusOneHour: UILabel!
    @IBOutlet weak var labelSubstractOneDay: UILabel!
    @IBOutlet weak var labelPlusOneDay: UILabel!
    @IBOutlet weak var labelAddXHours: UILabel!
    @IBOutlet weak var labelRemoveXHours: UILabel!
    @IBOutlet weak var labelAddXDays: UILabel!
    @IBOutlet weak var labelRemoveXDays: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelsSetup()
    }
    
    func labelsSetup() {
        
        //Date Formatter
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH-mm"

        //Get now Date
        let now = NSDate()
        
        //Setup Labels
        labelNow.text = dateFormatter.stringFromDate(now)
        labelPlusOneHour.text = dateFormatter.stringFromDate(now.addOneHour())
        labelSubstractOneHour.text = dateFormatter.stringFromDate(now.substractOneHour())
        labelPlusOneDay.text = dateFormatter.stringFromDate(now.addOneDay())
        labelSubstractOneDay.text = dateFormatter.stringFromDate(now.substractOneDay())
        labelAddXHours.text = dateFormatter.stringFromDate(now.addHours(4))
        labelRemoveXHours.text = dateFormatter.stringFromDate(now.removeHours(4))
        labelAddXDays.text = dateFormatter.stringFromDate(now.addDays(4))
        labelRemoveXDays.text = dateFormatter.stringFromDate(now.removeDays(4))
    }
}

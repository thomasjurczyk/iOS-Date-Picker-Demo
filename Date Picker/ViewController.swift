//
//  ViewController.swift
//  Date Picker
//
//  Created by Thomas Jurczyk on 3/12/19.
//  Copyright © 2019 Thomas Jurczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.timeStyle = DateFormatter.Style.long
        getDateAndPresent()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func dateChanged(_ sender: Any)
        {
            
            getDateAndPresent()

    }
    
    func getDateAndPresent()
    {
        let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
    }
    

}


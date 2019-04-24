//
//  DateViewController.swift
//  My Contact List
//
//  Created by Byung Lee on 4/17/19.
//  Copyright © 2019 Leaning Mobile Apps. All rights reserved.
//

import UIKit

protocol DateControllerDelegate: class {
    func dateChanged(date: Date)
}

class DateViewController: UIViewController {
    
    weak var delegate: DateControllerDelegate?
    
    @IBOutlet weak var dtpDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let saveButton: UIBarButtonItem =
            UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.save,
                            target: self,
                            action: #selector(saveDate))
        self.navigationItem.rightBarButtonItem = saveButton
        self.title = "Pick Birthdate"
    }
    
    @objc func saveDate(){
        self.delegate?.dateChanged(date: dtpDate.date)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//
//  ViewController.swift
//  NoteApp
//
//  Created by Aydın Kutlu on 10.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeTextfield: UITextField!
    @IBOutlet weak var noteTextField: UITextField!
    
    
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var notelabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveClicked(_ sender: Any) {
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
    }
}


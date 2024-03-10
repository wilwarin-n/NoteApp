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
        
        let savedNote = UserDefaults.standard.object(forKey: "note")
        let savedTime = UserDefaults.standard.object(forKey: "time")
        
        //as -> casting
        if let getNote = savedNote as? String {
            notelabel.text = "To-Do: \(getNote)"
        }
        
        if let getTime = savedTime as? String {
            timelabel.text = "The Time for To-Do: \(getTime)"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(noteTextField.text!, forKey: "note")
        UserDefaults.standard.set(timeTextfield.text!, forKey: "time")
        
        notelabel.text = "To-Do: \(noteTextField.text!)"
        timelabel.text = "The Time for To-do: \(timeTextfield.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
    }
}


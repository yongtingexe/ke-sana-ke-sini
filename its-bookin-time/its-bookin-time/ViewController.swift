//
//  ViewController.swift
//  its-bookin-time
//
//  Created by user231136 on 11/27/22.
//

import UIKit
import Eureka
import ImageRow

class ViewController: FormViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        form +++ Section("Account")
        
        <<< ImageRow(){ row in
            row.title = "Display Picture"
            row.sourceTypes = [.PhotoLibrary]
        }
        
        <<< TextRow(){ row in
            row.title = "Name"
            row.placeholder = "Joe Mama"
        }
        
        <<< PasswordRow(){ row in
            row.title = "Password"
            row.placeholder = "6663629"
        }
        
        <<< EmailRow(){ row in
            row.title = "Email"
            row.placeholder = "joepapa@gg.com"
        }
        
        +++ Section("History")
        
        <<< PushRow<String>() {
            $0.title = "My Stays"
            $0.options = ["Cheap Cheap Hotel", "Beach Bay"]
        }
        
        <<< PushRow<String>(){
            $0.title = "My Flights"
        }
        
        +++ Section("General")
        
        <<< PushRow<String>(){
            $0.title = "Settings"
        }
        
        <<< PushRow<String>(){
            $0.title = "About"
        }
    }
}

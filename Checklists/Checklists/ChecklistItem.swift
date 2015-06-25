//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Anthony Camara on 23/06/2015.
//  Copyright (c) 2015 Anthony Camara. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
 
    var text = ""
    var checked = false



    func toggleChecked() {
            checked = !checked
    }
    
}
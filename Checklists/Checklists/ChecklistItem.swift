//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Anthony Camara on 23/06/2015.
//  Copyright (c) 2015 Anthony Camara. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
 
    var text = ""
    var checked = false



    func toggleChecked() {
            checked = !checked
    }
    
    
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeObject(checked, forKey: "Checked")
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObjectForKey("Text") as! String
        checked = aDecoder.decodeObjectForKey("Checked") as! Bool
        super.init()
    }
    
    
    convenience init(text: String) {
        self.init(text: text, checked: false)
    }
    
    init(text: String, checked: Bool) {
        self.text = text
        self.checked = checked
        super.init()
    }
}
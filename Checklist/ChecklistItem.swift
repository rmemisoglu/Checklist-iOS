//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Others on 26.06.2019.
//  Copyright © 2019 Others. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    
    @objc var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }
    
}

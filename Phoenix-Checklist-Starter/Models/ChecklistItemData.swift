//
//  ChecklistItemData.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation

// TODO 2: Implement a class called ChecklistItemData and in it, create an instance of an object of the class ChecklistItem and initialize into an empty array right away.

// After that implement an init() without parameters or arguments and create sample ChecklistItems and append them into the array. (You can create as many sample you want)

class ChecklistItemData {
    
    var items = [ChecklistItem]()
    
    init() {
        
        let item1 = ChecklistItem(text: "Do your mom")
        items.append(item1)
        
        items.append(ChecklistItem(text: "Do your dad"))
        items.append(ChecklistItem(text: "Do your sister"))
        items.append(ChecklistItem(text: "Do your brother"))
    }
    
    
}

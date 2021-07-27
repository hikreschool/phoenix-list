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
    
    var listItems = [ChecklistItem]()
    
    init() {
        
        listItems.append(ChecklistItem(descriptionText: "Cook Pancit Canton for midnight snack!", isChecked: false))
        
        listItems.append(ChecklistItem(descriptionText: "Watch movies with friends on discord", isChecked: true))
        
        listItems.append(ChecklistItem(descriptionText: "Clean macbook", isChecked: true))
        
        listItems.append(ChecklistItem(descriptionText: "Check Tinder", isChecked: false))
    }
}

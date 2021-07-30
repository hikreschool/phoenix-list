//
//  ChecklistItemData.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation

// TODO 2: Implement a class called ChecklistItemData and in it, create an instance of an object of the class ChecklistItem and initialize into an empty array right away.

class ChecklistItemData {
    var ChecklistItemInstance = [ChecklistItem]()
    
    init() {
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Soul", isChecked: false))
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Time", isChecked: false))
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Space", isChecked: false))
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Power", isChecked: false))
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Reality", isChecked: false))
        ChecklistItemInstance.append(ChecklistItem(descriptionText: "Mind", isChecked: false))
    }
    
}

// After that implement an init() without parameters or arguments and create sample ChecklistItems and append them into the array. (You can create as many sample you want)

//
//  ChecklistItemData.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation

// TODO 2: Implement a class called ChecklistItemData and in it, create an instance of an object of the class ChecklistItem and initialize into an empty array right away.

// After that implement an init() without parameters or arguments and create sample ChecklistItems and append them into the array. (You and create as many sample you want)

let checkListArray = [
    CheckListItem(item: "Check for new app challenge"),
    CheckListItem(item: "Clone from github repository"),
    CheckListItem(item: "Fire up xCode IDE"),
    CheckListItem(item: "Open the app challenge"),
    CheckListItem(item: "Do steps in the model"),
    CheckListItem(item: "Do steps in the controller"),
    CheckListItem(item: "Do steps on the storyboard"),
]

class CheckListItemData {
    var list: [CheckListItem] = []
    
    init() {
        for item in checkListArray {
            list.append(item)
        }
    }
}

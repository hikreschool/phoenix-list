//
//  ChecklistItemData.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation
import UIKit

// TODO 2: Implement a class called ChecklistItemData and in it, create an instance of an object of the class ChecklistItem and initialize into an empty array right away.

// After that implement an init() without parameters or arguments and create sample ChecklistItems and append them into the array. (You can create as many sample you want)

class ChecklistItemData {
    var checklistitems = [ChecklistItem]()

    init() {
        checklistitems.append(ChecklistItem(descriptionText: "Soul", isChecked: false, color: UIColor.orange))
        checklistitems.append(ChecklistItem(descriptionText: "Time", isChecked: false, color: UIColor.green))
        checklistitems.append(ChecklistItem(descriptionText: "Space", isChecked: false, color: UIColor.blue))
        checklistitems.append(ChecklistItem(descriptionText: "Power", isChecked: false, color: UIColor.purple))
        checklistitems.append(ChecklistItem(descriptionText: "Reality", isChecked: false, color: UIColor.red))
        checklistitems.append(ChecklistItem(descriptionText: "Mind", isChecked: false, color: UIColor.yellow))
    }
}

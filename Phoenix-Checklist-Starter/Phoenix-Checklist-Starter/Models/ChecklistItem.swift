//
//  ChecklistItem.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation

// TODO 1: Implement a class called ChecklistItem to which it has two properties or variables called, descriptionText of type String and isChecked of type Boolean.
//Of course implement one designated initializer as well.

class CheckListItem {
    var descriptionText: String;
    var isChecked: Bool;
    init(item: String, checked: Bool = false) {
        descriptionText = item
        isChecked = checked
    }
    
    func uncheck() {
        isChecked = false
    }
    
    func check() {
        isChecked = true
    }
}

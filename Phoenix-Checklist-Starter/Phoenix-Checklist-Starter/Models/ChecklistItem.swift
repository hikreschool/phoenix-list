//
//  ChecklistItem.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import Foundation
import UIKit

// TODO 1: Implement a class called ChecklistItem to which it has two properties or variables called, descriptionText of type String and isChecked of type Boolean.
//Of course implement one designated initializer as well.

class ChecklistItem {
    var descriptionText: String
    var isChecked: Bool
    var color: UIColor

    init(descriptionText: String, isChecked: Bool, color: UIColor) {
        self.descriptionText = descriptionText
        self.isChecked = isChecked
        self.color = color
    }
}

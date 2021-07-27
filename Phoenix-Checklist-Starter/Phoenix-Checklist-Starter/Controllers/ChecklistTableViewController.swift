//
//  ChecklistTableViewController.swift
//  Phoenix-Checklist-Starter
//
//  Created by jeazous on 7/27/21.
//

import UIKit

class ChecklistTableViewController: UITableViewController {
    
    // TODO 3: Here, create an instance of an object of the class ChecklistItemData and initialize it
    var checklistItems = ChecklistItemData()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
    }
    
    
    

    // MARK: - Table view data source & delegate methods
    // NOTE: - All these methods that has tableView in their function or method names are part of the UITableView class or framework


    // This method decides how many rows do we want to display in our UITableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // TODO 4: Instead of 0, return the total number of items in our items in array found inside the ChecklistItemData
        return checklistItems.checklistItems.count
    }

    // This method decides how tall the rows are in our UITableView, can also be done in the Interface Builder
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 77
    }
    
    // This method determines what data to display for every cell for row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Creating a reference to our UITableViewCell based on the identifier. The Identified can be seen in Storyboard when you clicked on the sample cell
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem", for: indexPath)

        // Configure the cell...
        // Creating an instance of the reference of the labels and views inside our UITableViewCell
        let descriptionLabel = cell.viewWithTag(1000) as! UILabel
        let circleView = cell.viewWithTag(1001) as! UIView
        
        // Putting a corner radius on our UIView
        circleView.layer.cornerRadius = circleView.frame.size.height / 2
        
        // TODO 5: Create a constant called itemFromList that access invidual items in our ChecklistItems array
        // Hint: To Access every item you can use [indexPath.row]
        let itemFromList = checklistItems.checklistItems[indexPath.row]
        
        
        // TODO 6: Display the descriptionText property value from itemFromList on our label text
        descriptionLabel.text = itemFromList.descriptionText
     
        
        // TODO 7: Call configureCheckmark() method here by passing cell and indexPath in the parameters
     configureCheckmark(for: cell, at: indexPath)

        
        
        return cell
    }
    
    
    // This method determines what happens when you click on every cell for row
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
     
        // TODO 8: Create a constant called checklistIsChecked that stores that the check list items array inside our ChecklistItemData and then reference each value by adding [indexPath.row] at the end
        let checklistIsChecked = checklistItems.checklistItems[indexPath.row]
        
        
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            // TODO 9: Check if the isChecked property of every check list item is true or false
            // If the check list item's isChecked equals to true, change it to false, and vice-versa.
            if checklistIsChecked.isChecked == true {
                checklistIsChecked.isChecked = false
            } else {
                checklistIsChecked.isChecked = true

            }
            
            
            
          // TODO 10: Call configureCheckmark() method here by passing in the cell and indexPath as parameters
            configureCheckmark(for: cell, at: indexPath)
            
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // This method handles the UI updates on every cell for row. (the text color, view color, and the checkmark)
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        
        
        // TODO 11: Create a constant called checklistIsChecked that stores that the check list items array inside our ChecklistItemData and then reference each value by adding [indexPath.row] at the end
        let checklistIsChecked = checklistItems.checklistItems[indexPath.row]

        

        
        

        // Already done for you
        let descriptionLabel = cell.viewWithTag(1000) as! UILabel
        let circleView = cell.viewWithTag(1001) as! UIView
        
        // TODO 12: Check the isChecked property of the check list item using the constant defined from above.
        
        // If the value is true
        // 1. Change the cell.accessoryType to .checkmark
        // 2. Change the descriptionLabel.textColor to UIColor.orange
        // 3. Change the circleView.backgroundColor to UIColor.orange
        
        // If the value is false
        // 1. Change the cell.accessoryType to .none
        // 2. Change the descriptionLabel.textColor to UIColor.lightGray
        // 3. Change the circleView.backgroundColor to UIColor.lightGray
     
        
        
        if checklistIsChecked.isChecked == true {
            cell.accessoryType = .checkmark
            circleView.backgroundColor = UIColor.orange
        } else {
            cell.accessoryType = .none
            circleView.backgroundColor = UIColor.lightGray
        }
        
        
        
        // You don't have to do anything else here
        self.checkIfAllItemsChecked()
    }
    
    // This method checks if all the items in the checklist are all checked out
    func checkIfAllItemsChecked() {
        
        var uncheckedItems = 0
        
        for item in self.checklistItems.checklistItems {
            
            if !item.isChecked {
                uncheckedItems += 1
            }
        }
        
        if uncheckedItems == 0 {
            self.performSegue(withIdentifier: "goToSuccess", sender: self)
            
            for item in self.checklistItems.checklistItems {
                
                item.isChecked = false
            }
            
            tableView.reloadData()
        }
    }

    // This IBOutlet action is connected to the '+' sign located in the right side of our UINavigationController
    @IBAction func plusButtonTapped(_ sender: Any) {
        
        // Calling the method for adding a new item in the array
        addNewCheckListItem()
    }
    
    
    
    // This func or method is responsible for creating a UIAlertController for adding a new item on the checklist
    func addNewCheckListItem() {
        
        // Creating in instance object of UIAlertController
        let alertController = UIAlertController(title: "Add New Item", message: "", preferredStyle: UIAlertController.Style.alert)
        
        // Adding a textfield in the UIAlertController
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Spank me Mama"
        }
        
        // Creating an instance of UIAlertAction called saveAction for saving the new item
        let saveAction = UIAlertAction(title: "Add", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            if let newItem = firstTextField.text {
                let newChecklistItem = ChecklistItem(descriptionText: newItem, isChecked: false)
                self.checklistItems.checklistItems.append(newChecklistItem)
                self.tableView.reloadData()
            }
        })
        
        // Creating an instance of UIAlertAction called cancelAction for canceling the task
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
                                            (action : UIAlertAction!) -> Void in })
        
        
        // Adding both UIAlertAction objects into our alertController object
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        // Presenting the alertController into our ViewController
        self.present(alertController, animated: true, completion: nil)
    }

 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

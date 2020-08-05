//
//  ViewController.swift
//  BillsTableViewApp
//
//  Created by Bill Skrzypczak on 12/1/19.
//  Copyright © 2019 Bill Skrzypczak. All rights reserved.
//

//TO DO:
//  1. Create a new single view Xcode project and name it yourNameTabelView App
//  2. Click on the Main.storyboard in the file structure panel on the left.
//  3. Press Shift CMD L to bring up the object library
//  4. Drag the Table View object onto the view
//  5. Resize it to fill the view
//  6. While the Table View Object is selected click on the small icon near the bottom right that looks like a triangle between two verticle lines
//  7. Select Reset To Suggested Constraints
//  8. Press Shift CMD L again
//  9. Drag and drop a Table View Cell near the top of the view
//  10. While the Table View Cell is selected click on the Attributes Inspector on the upper right side (Looks like a shield)
//  11. Click in the Identifier Text Field and enter mycellID
//  12. Click the center of the View
//  13. Click on the Connections Inspector on the upper right (Circle with right pointing arrow inside)
//  14. Click in the circle mark data source and drag the mouse over the view controller icon and release it.
//  15. Click in the circle marked delegate and drag them out over the view controller icon and release it.

import UIKit

//TO DO:
//  16. Modify the class view controller line to look like the line below
//
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

//TO DO:
//  17. Create an array call billsGuitars and enter the elements below
//
    var billsGuitars = ["Gibson Les Paul Custom", "Fender Stratocaster", "Gibson ES 335", "PRS S2 Custom 22"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

//TO DO:
//  18. Enter the function below it's purpose is to define the number of rows that will be needed based on how many elements are in the array
//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return billsGuitars.count
    }

//TO DO:
//  19. Add the function below, it's purpose is to load all of the data from the array into the table view
//
    func tableView(_ tableView: UITableView,  cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycellID")
        cell?.textLabel?.text = billsGuitars[indexPath.row]
        
        return cell!
                
    }
 
//TO DO:
//  20. Add the function below, it's purpose is to display a pop up when you click on one of the items in the table view.
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = billsGuitars[indexPath.row]
        let alert = UIAlertController(title: "You chose this awesome guitar", message: "\(selectedItem)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in })
            // Just dismiss the bubble when I click OK
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    
    }
    
}

//
//  ViewControllerB.swift
//  task-delegation
//
//  Created by Muskan Jain on 04/05/22.
//

import UIKit

protocol DesignationDeligate {
    func didSelectDesignation(designation: String)
}

class ViewControllerB: UIViewController {
    
    var designationArray = ["iOS Intern", "Android Intern", "HR Intern", "Sales Intern", "Marketing Intern"]
    var designationDelegate: DesignationDeligate!

   @IBOutlet weak var labelDesignation: UILabel!
    
    
    @IBOutlet weak var designationTableView: UITableView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        designationTableView.delegate = self
        designationTableView.dataSource = self
    }


}

extension ViewControllerB: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return designationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "designationCell", for: indexPath)
        cell.textLabel!.text = designationArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        designationDelegate.didSelectDesignation(designation: designationArray[indexPath.row])
        dismiss(animated: true)
        
    }
    
    
}

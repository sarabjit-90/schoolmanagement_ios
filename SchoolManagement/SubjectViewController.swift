//
//  SubjectViewController.swift
//  SchoolManagement
//
//  Created by VD on 11/30/20.
//

import UIKit

class SubjectViewController: UIViewController, UITableViewDataSource {

    var studentId:String?
    var arrContent = [["Hindi", "English", "Maths"], ["Hindi", "English", "Maths", "Sciece"], ["Hindi", "English", "Maths", "Sciece", "Social Science"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch studentId {
        case "C0789935":
            return arrContent[0].count
        case "C0789954":
            return arrContent[1].count
        default:
            return arrContent[2].count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        if indexPath.row%2==0 {
            cell.backgroundColor = #colorLiteral(red: 0.9489808058, green: 0.9489808058, blue: 0.9489808058, alpha: 1)
        }else {
            cell.backgroundColor = .white
        }
        
        switch studentId {
        case "C0789935":
            cell.textLabel?.text = arrContent[0][indexPath.row]
        case "C0789954":
            cell.textLabel?.text = arrContent[1][indexPath.row]
        default:
            cell.textLabel?.text = arrContent[2][indexPath.row]
        }
        
        return cell
    }
}

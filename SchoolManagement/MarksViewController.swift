//
//  MarksViewController.swift
//  SchoolManagement
//
//  Created by VD on 11/30/20.
//

import UIKit

class MarksViewController: UIViewController, UITableViewDataSource {

    var studentId:String?
    var arrContent: [[String: Any]] = [["subject": ["Hindi", "Engilish", "Maths"], "marks": [60, 70, 80]], ["subject": ["Hindi", "Engilish", "Maths", "Science"], "marks": [92, 60, 70, 80]] , ["subject": ["Hindi", "Engilish", "Maths", "Science", "Social Science"], "marks": [56, 92, 60, 70, 80]] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch studentId {
        case "C0789935":
            let dictionary = arrContent[0]
            let array =  dictionary["subject"] as! [Any]
            return array.count
            
        case "C0789954":
            let dictionary = arrContent[1]
            let array =  dictionary["subject"] as! [Any]
            return array.count
            
        default:
            let dictionary = arrContent[2]
            let array =  dictionary["subject"] as! [Any]
            return array.count
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath) as! MyTableViewCell
        if indexPath.row%2==0 {
            cell.backgroundColor = #colorLiteral(red: 0.9489808058, green: 0.9489808058, blue: 0.9489808058, alpha: 1)
        }else {
            cell.backgroundColor = .white
        }
        
        switch studentId {
        case "C0789935":
            let dictionary = arrContent[0]
            let arraySubject =  dictionary["subject"] as! [Any]
            let arrayMarks = dictionary["marks"] as! [Any]
            cell.lblSubject?.text = arraySubject[indexPath.row] as? String
            cell.lblMarks?.text =  String(arrayMarks[indexPath.row] as? Int ?? 0) + "/100"
            
        case "C0789954":
            let dictionary = arrContent[1]
            let arraySubject =  dictionary["subject"] as! [Any]
            let arrayMarks = dictionary["marks"] as! [Any]
            cell.lblSubject?.text = arraySubject[indexPath.row] as? String
            cell.lblMarks?.text =  String(arrayMarks[indexPath.row] as? Int ?? 0) + "/100"
            
        default:
            let dictionary = arrContent[2]
            let arraySubject =  dictionary["subject"] as! [Any]
            let arrayMarks = dictionary["marks"] as! [Any]
            cell.lblSubject?.text = arraySubject[indexPath.row] as? String
            cell.lblMarks?.text =  String(arrayMarks[indexPath.row] as? Int ?? 0) + "/100"
        }
        
        return cell
    }

}

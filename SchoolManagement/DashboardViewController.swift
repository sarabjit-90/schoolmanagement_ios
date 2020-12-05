//
//  DashboardViewController.swift
//  SchoolManagement
//
//  Created by VD on 11/30/20.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var studentId:String?
    var arrContent = ["Events", "Subject", "Marks", "Personal Info"]
    var images:[String] = ["event", "book", "marks", "info"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrContent.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        if indexPath.row%2==0 {
            cell.backgroundColor = #colorLiteral(red: 0.9489808058, green: 0.9489808058, blue: 0.9489808058, alpha: 1)
        }else {
            cell.backgroundColor = .white
        }
        
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        cell.textLabel?.text = arrContent[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "EventViewController") as! EventViewController
            
            vc.studentId = studentId
            self.navigationController?.pushViewController(vc, animated: true)
        
        case 1:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SubjectViewController") as! SubjectViewController
            
            vc.studentId = studentId
            self.navigationController?.pushViewController(vc, animated: true)
        
        case 2:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MarksViewController") as! MarksViewController
            
            vc.studentId = studentId
            self.navigationController?.pushViewController(vc, animated: true)
            
        default:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "PersonalInfoViewController") as! PersonalInfoViewController
            
            vc.studentId = studentId
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

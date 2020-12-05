//
//  PersonalInfoViewController.swift
//  SchoolManagement
//
//  Created by VD on 11/30/20.
//

import UIKit

class PersonalInfoViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var studentId:String?
    @IBOutlet weak var lblStudentId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblClass: UILabel!
    @IBOutlet weak var lblEmailId: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    let arrContent:[[String: Any]] = [["id": "C0789935", "name":"Gurbhinder Singh", "class":"X", "email":"gurbhindersingh@gmail.com", "address":"539 Government St, Dryden, ON P8N 2P6, Canada", "image":"gurbhinder"], ["id": "C0789954", "name":"Sarabjit Singh", "class":"X", "email":"sarabjitsingh@gmail.com", "address":"539 Government St, Dryden, ON P8N 2P6, Canada", "image":"sarabjit"], ["id": "C0777715", "name":"Arnav Dutta", "class":"X", "email":"arnavdutta@gmail.com", "address":"539 Government St, Dryden, ON P8N 2P6, Canada", "image":"arnav"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = 4
        imageView.clipsToBounds = true
        
        if let student_id = studentId {
            lblStudentId.text = "Student Id: " + student_id
            
        }

        
        switch studentId {
        case "C0789935":
            let data = arrContent[0] as! [String:String]
            lblName.text = data["name"]
            lblClass.text = data["class"]
            lblEmailId.text = data["email"]
            lblAddress.text = data["address"]
            imageView.image = UIImage(named: data["image"] ?? "")
            
        case "C0789954":
            let data = arrContent[1] as! [String:String]
            lblName.text = data["name"]
            lblClass.text = data["class"]
            lblEmailId.text = data["email"]
            lblAddress.text = data["address"]
            imageView.image = UIImage(named: data["image"] ?? "")
            
        default:
            let data = arrContent[2] as! [String:String]
            lblName.text = data["name"]
            lblClass.text = data["class"]
            lblEmailId.text = data["email"]
            lblAddress.text = data["address"]
            imageView.image = UIImage(named: data["image"] ?? "")
        }
    }
    

}

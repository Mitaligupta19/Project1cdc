//
//  AddStudentsVC.swift
//  CoreDataCRUD
//
//  Created by Mitali Gupta on 24/08/23.
//

import UIKit

class AddStudentsVC: UIViewController {


    
    
   
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtStd: UITextField!
    @IBOutlet weak var txtSchool: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func onClickAdd(_ sender: Any) {
        
        if let name = txtName.text, let std = txtStd.text, let school = txtSchool.text{
            let newStudent = Student(context: DBManager.share.context)
            newStudent.name = name
            newStudent.std = std
            newStudent.school = school
            
            DBManager.share.saveContext()
        }
    }
    
}
  

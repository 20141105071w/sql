//
//  strike.swift
//  sql
//
//  Created by 20141105071 on 16/7/6.
//  Copyright © 2016年 20141105071. All rights reserved.
//

import Foundation
import UIKit

class delete: UIViewController{
    
    @IBOutlet weak var delete1: UITextField!
    var db:SQLiteDB!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      db = SQLiteDB.sharedInstance()
        
        
    db.execute("create table if not exists tuser(vid integer primary key,uname varchar(20),mobile varchar(20),adress varchar(20)emall varchar(20))")
    }
    
    @IBAction func strike(sender: AnyObject) {
        strike()
        
    }
    func strike(){
        let a=delete1.text!
        let sql="delete from tuser where uname='\(a)'"
        let result = db.execute(sql)
        print(result)
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

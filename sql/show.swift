//
//  show.swift
//  sql
//
//  Created by 20141105071 on 16/7/6.
//  Copyright © 2016年 20141105071. All rights reserved.
//

import Foundation

import UIKit

class query: UIViewController{
    
var db:SQLiteDB!
   

    
    @IBOutlet weak var query: UITextField!
   
    @IBOutlet weak var show2: UITextView!


  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        db = SQLiteDB.sharedInstance()
        
        
        db.execute("create table if not exists tuser(uid integer primary key,uname varchar(20),mobile varchar(20),adress varchar(20),email varchar(20))")
    }
    
 


   
    @IBAction func show(sender: AnyObject) {
        show1()
    }
    
 
    func show1(){
        let b=query.text!
        let data = db.query("select * from tuser where uname='\(b)'")
        for var x=0;x<data.count;x++
        {
            let tuser = data[x]
            show2.text! += "姓名:" + String(tuser["uname"]!) + "手机号:" + String(tuser["mobile"]!) + "地址:" + String(tuser["adress"]!) + "电子邮件:" + String(tuser["email"]!) + "\n"
         }
       print("qweqweqwe")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

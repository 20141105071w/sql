//
//  show.swift
//  sql
//
//  Created by 20141105071 on 16/7/6.
//  Copyright © 2016年 20141105071. All rights reserved.
//

//import Foundation

import UIKit

class query: UIViewController{
    
    var db:SQLiteDB!
    
    
    
    @IBOutlet var nn: UITextField!

    @IBOutlet var xx: UITextView!
    
    /*@IBOutlet var h: UITextField!
    
    @IBOutlet var l: UITextField!
    @IBOutlet var a: UITextView!*/
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        db = SQLiteDB.sharedInstance()
        
        db.execute("create table if not exists ssuser(uid integer primary key,uname varchar(20),mobile varchar(20),address varchar(20),email varchar(20))")
    }
    
    
    
    @IBAction func cc(sender: AnyObject) {
        select()

    }
    

    func select()
    {
        //nn.text=""
        let b=nn.text!
        let data = db.query("select * from ssuser where uname='\(b)'")
        for var x=0 ; x<data.count ; x++
        {
            let ssuser = data[x]
            xx.text! += "姓名:"+String(ssuser["uname"]!)+"手机号:" + String(ssuser["mobile"]!)+"地址:"+String(ssuser["address"]!)+"电子邮件:"+String(ssuser["email"]!) + "\n"
        }
        print("12312")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}


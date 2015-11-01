//
//  XDCourceViewController.swift
//  XDProject
//
//  Created by newtouch on 15/8/4.
//  Copyright (c) 2015年 xidaMM. All rights reserved.
//

import UIKit

class XDCourceViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    var type = 0 //segment index
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //初始化data
        initData()
        //segment 设置
        setSegment()
        //tableView 
        
    }
    func initData(){
        type = 0
        
    }
    func setSegment(){
        let attributes = NSDictionary(objectsAndKeys:UIColor.whiteColor(),NSForegroundColorAttributeName)
        mySegment.setTitleTextAttributes(attributes, forState: UIControlState.Selected)
    }
    func setTableView(){
        tableView.dataSource = self;
        tableView.delegate = self;
    }
    /**
    MARK:关于作者
    
    :param: sender <#sender description#>
    */
    @IBAction func clickedBtnAboutMe(sender: AnyObject) {
        let alertView = UIAlertView(title: "关于作者", message: "作者：希达。QQ：452422740", delegate: self, cancelButtonTitle: "确定")
        alertView.show()

    }
    /**
    MARK:点击搜索
    
    :param: sender <#sender description#>
    */
    @IBAction func searchClicked(sender: AnyObject) {
    }
    

    // MARK:- TableView delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if type == 0{
            return 1
        }else{
            return 1
        }
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if type == 0{
            if indexPath.row == 0{
                return 155
            }else if indexPath.row == 1{
                return 90
            }else{
                return 72
            }
        }else{
            return 60
        }

        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if type == 0{
            if indexPath.row == 0{
                
            }
        }else{
            
        }
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    /**
    MARK:segment clicked
    
    :param: sender
    */
    @IBAction func OnTapSegmentCtr(sender: AnyObject) {
        let index = sender.selectedSegmentIndex
        if index == 0 {
            type = 0
        }else if index == 1 {
            type = 1
        }
        self.tableView.reloadData()
    }
//     MARK: - Navigation

////     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
////         Get the new view controller using segue.destinationViewController.
////         Pass the selected object to the new view controller.
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

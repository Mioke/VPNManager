//
//  RootVC.swift
//  VPNManager
//
//  Created by Mioke on 1/24/16.
//  Copyright © 2016 Mioke. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.showAD()
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), {
            
            self.hideAD()
            self.next()
        })
    }
    
    func showAD() -> Void {
        
    }
    
    func hideAD() -> Void {
        
    }
    
    func next() {
        
        var isLogin = false
        
        isLogin = ["a": true]["a"]!
        
        if isLogin {
            self.inMainPage()
        } else {
            self.inLogin()
        }
    }
    
    func inMainPage() {
        
    }
    
    func inLogin() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

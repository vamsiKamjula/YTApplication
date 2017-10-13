//
//  ViewController.swift
//  YTApplication
//
//  Created by vamsi krishna reddy kamjula on 10/11/17.
//  Copyright © 2017 vamsikvkrApplicationDevelopment. All rights reserved.
//

import UIKit
import GoogleSignIn
import Google

class LoginVC: UIViewController, GIDSignInUIDelegate, GIDSignInDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var error: NSError?
        GGLContext.sharedInstance().configureWithError(&error)
        
        if error != nil {
            print(error!)
            return
        }
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
        
        let signInBtn = GIDSignInButton(frame: CGRect.init(x: 0, y: 0, width: 150, height: 50))
        signInBtn.center = view.center
        view.addSubview(signInBtn)
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if error != nil {
            print(error)
            return
        }
        print(user.profile.email)
        print(user.profile.name)
    }
}

